package addGroup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import addGroup.addDAO;
import addGroup.addDTO;

public class groupPageAction implements CommandAction  {

	
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		
		return "/groupPage.jsp";
}
}