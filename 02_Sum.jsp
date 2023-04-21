<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02_Sum.jsp</title>
</head>
<body>

<!-- JSP는 JAVA에서 사용하던 거의 모든 문법이 똑같이 사용됨 -->
	<%
		int sum=0;
		for (int i =1; i<=10; i++){
		sum += i;
		
	%>
	<h2>1부터 <%=i%>까지의 합계 : <%=sum %></h2>
	<% 
	}
	%>
	
	<!--JSP 명령들 사이에 HTML 같은 요소들이 껴들어야 한다면 JSP 영역을 끝내고 
	해당 내용을 기술한 후 다시 JSP영역을 시작시킴
	한 페이지 안에서 JSP 명령은 중간에 영역이 끝나고 다시 시작해도 한 프로그램처럼 이어짐
	위와 같이 하나의 반복문 안 ({})에 H2 태그가 들어있다면 h2 태그도 반복실행만큼 쓴 것과 같음 -->
	
	
</body>
</html>
