package addGroup;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import addGroup.addDAO;
import addGroup.addDTO;


public class addGroupProAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		addDTO group = new addDTO();
		
		String[] meetingCountStr = request.getParameterValues("meetingCount");
		String[] targetStr = request.getParameterValues("target");
		String meetingCount ="";
		String target = "";
	
		
		
		for(int i=0; i<meetingCountStr.length; i++){
			meetingCount += meetingCountStr[i]+",";
			
		}
		
		for(int i=0; i<targetStr.length; i++){
			target+= targetStr[i]+",";
		}
		
		group.setGroupName(request.getParameter("groupName"));
		group.setMaxMember(Integer.parseInt(request.getParameter("maxMember")));
		group.setMoney(Integer.parseInt(request.getParameter("money")));
		group.setLimitDate(request.getParameter("limitDate"));
		group.setMeetingCount(meetingCount);
		group.setTel(request.getParameter("tel"));
		group.setBcategorycode(Integer.parseInt(request.getParameter("bcategorycode")));
		group.setScategorycode(request.getParameter("scategorycode"));
		group.setGroupGoal(request.getParameter("groupGoal"));
		group.setTarget(target);
		group.setImagePath(request.getParameter("imagePath"));
		group.setLocation(request.getParameter("location"));
		group.setIntroduce(request.getParameter("introduce"));
		
	
		
		System.out.println(group);
		
		addDAO dbPro = addDAO.getInstance();
		dbPro.addGroup(group);
		
		return "/addGroupPro.jsp";
	} 

}
