package controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.board.action.CommandAction;

public class ControllerUsingURI extends HttpServlet {
	
	private Map commandMap = new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		String configfile = config.getInitParameter("propertyConfig");
		Properties prop = new Properties();
		FileInputStream fis = null;
		try{
			String configFilePath = config.getServletContext().getRealPath(configfile);
			fis = new FileInputStream(configFilePath);
			prop.load(fis);
		}catch(IOException e){
			throw new ServletException(e);
		}finally{
			if(fis != null){
				try{fis.close();}catch(IOException e){}
			}
		}
		Iterator keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()){
			String command = (String)keyIter.next();
			String className = prop.getProperty(command); //������Ƽ�� ���� �� �� ������
			try{
				Class commandClass = Class.forName(className); //Ŭ������ �����
				Object commandInstance = commandClass.newInstance(); //�ν��Ͻ� ȭ
				commandMap.put(command, commandInstance);//hashMap�� ¦��� ����
			}catch(ClassNotFoundException e){
				throw new ServletException(e);
			}catch(InstantiationException e){
				throw new ServletException(e);
			}catch(IllegalAccessException e){
				throw new ServletException(e);
			}
		}
	} //end init()
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestPro(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		requestPro(req, resp);
	}
	
	public void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String view = null;
		CommandAction com = null;
		try{
			String command = request.getRequestURI(); //uri���� �н� �κи� ������
//			System.out.println("command : " + command);
			if(command.indexOf(request.getContextPath()) == 0){ //������Ʈ������ �����Ѵٸ�
				command = command.substring(request.getContextPath().length()); //������Ʈ�� ���ĺ��� '/mvc_board/mvc/list.do' ����
			}
			com = (CommandAction) commandMap.get(command); 
			view = com.requestPro(request, response); //������ �� jsp�ּҸ� ������.
		}catch(Throwable e){
			throw new ServletException(e);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response); //������
	}
}
