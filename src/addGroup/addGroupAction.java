package addGroup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addGroupAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		
		return "/addGroup.jsp";
	}

}
