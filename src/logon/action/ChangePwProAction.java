package logon.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.CommandAction;
import logon.LogonDBBean;

public class ChangePwProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		
		LogonDBBean manager = LogonDBBean.getInstance();
		String check = manager.changePasswd(id, name, jumin1, jumin2); 
		
		request.setAttribute("check", check);
		
		return "/logon/changePwPro.jsp";
	}

}
