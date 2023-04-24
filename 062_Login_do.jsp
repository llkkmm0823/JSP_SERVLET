<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<%
	// JSP 문법에 의한 로그인 체크 동작만 필요한 페이지이므로  별도의 HTML 태그는 사용하지 않습니다.-
	// 전달된 아이디 비번의 유효성을 점검한 뒤 로그인 성공페이지로 이동하거나, 로그인페이지로 되돌아갑니다.
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	// 이부분에서 실제로는 데이이베이스에 전달된 아이디의 회원을 조회한 후 비번을 비교합니다.
	// 지금은 데이터베이스 조회 없이 특정 아이디와 비번만 비교합니다
	if( id.equals("hong") && pwd.equals("1234") ){
		// 아이디 비번이 맞는 경우
		// jsp 문법으로 페이지 이동은 response.sendRedirect();
		response.sendRedirect("063_loginOk.jsp?name=" + URLEncoder.encode("홍길동", "UTF-8"));
		// <input type="text"> 태그를 쓰지 않고, 이동하는 주소에 파리미터 의 name과 value 를 붙여서 전송
		// 위와 같이 주소에 파라미터를 붙이는 방식은 post 방식으로는 사용할수가 없으므로 중요정보도 모두 노출됩니다.
		// jsp 파일에서 로그인 절차를 진행하면 한글 전달값에 대한 인코딩이 UTF-8 이 아니기때문에
		// 도착페이지에서 표시되는 한글이 깨집니다 별도의 URLEncoding 객체를 사용해야 합니다
	}else{
		// 아이디 비번이 맞지 않은 경우
		response.sendRedirect("061_Login.jsp");
	}
%>