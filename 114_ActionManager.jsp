<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>113_ActionUser.jsp</title>
</head>
<body>
<h2>관리자 로그인</h2>
<%
//String userName= request.getParameter("userName");
String userName= (String)request.getAttribute("userName");
%>
<h2><%=userName%>(<%=request.getParameter("userID")%>)님 환영합니다.</h2>
</body>
</html>