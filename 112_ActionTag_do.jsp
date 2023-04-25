<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<% 

//112_ActionTag_do.jsp

String userID = request.getParameter("userID");
String userPwd = request.getParameter("userPwd");
String loginCheck = request.getParameter("loginCheck");

//사용자 로그인일 경우....113_ActionUser.jsp로 이동
//관리자 로그인일 경우....114_ActionManager.jsp로 이동

/*
//1. response.sendRedirect로 사용한 경우
if(userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("user")){	
	response.sendRedirect(
	"113_ActionUser.jsp?userID=" + userID + "&userName=" + URLEncoder.encode("홍길동","UTF-8"));
	
}else if ( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("manager")){
	response.sendRedirect(
	"114_ActionManager.jsp?userID=" + userID + "&userName=" + URLEncoder.encode("홍길동","UTF-8"));
}else{
	response.sendRedirect("111_ActionTagForm.jsp");
}
*/

//2.forward를 사용한 경우
String url = null;
if(userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("user")){	
	url = "113_ActionUser.jsp";
	request.setAttribute("userName","홍길남");
	
}else if ( userID.equals("scott")&&userPwd.equals("1234")&&loginCheck.equals("manager")){
	url = "114_ActionManager.jsp";
	request.setAttribute("userName","홍길남");
}else{
	response.sendRedirect("111_ActionTagForm.jsp");
}
RequestDispatcher dp = request.getRequestDispatcher(url);
dp.forward(request, response);


%>
