// JSP파일 생성 후  서버 연결
// 프로젝트 이름 위에서 properties - project facets - JAVA 1.8버전으로 변경하기
// 우측 상단에 runtime - tomcat 체크 _ apply
// RUN 버튼 누르면 SERVER PAGE 팝업 , 역시 TOMCAT체크 후 FINISH
// 파일 이름 및 디렉토리, 볼륨 레이블 오류가 나면(메모장으로 RUN되는 오류) WINDOW - WEB BROWSER - CHROME(혹은 실행시키고 싶은 브라우저 선택) 클릭 후 다시 실행시켜보기.
// 서버오류가 난다면 SERVER 창에서 ( 콘솔창 위치_없다면 WINDOW-SHOW VIEW에서 SERVER창 꺼내기) APACHE TOMCAT 재 설치해보기. (v9.0)
// 이것도 안되면 TOMCAT을 아예 프로그램 추가/삭제에서 다 삭제한 후에 재 설치 , 상단 작업 반복해보기

// JSP 파일은 서버를 통해서 열어야 흔히 보던 HTML 화면이 나타남.
// HTML 학습시절 만들었던 HTML파일처럼 디렉토리를 찾아가 열어보면 페이지 창이 나타나지 않음.


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>01_Basic.jsp</title>
</head>
<body>

<h2>안녕하세요</h2>
<h2>JAVA SERVER PAGE(JSP)</h2>

<!--  JSP는 JAVA SERVER PAGE의 약자로, 웹페이지 내부에 프로그래밍적인 요소를 추가하거나,
서버에서 계산되고 실행된 결과를 웹페이지에서 표시하고자 할 때 사용
쉽게 얘기해서 웹페이지 HTML5 중간 중간에 자바 프로그래밍 코드를 같이 사용하겠다는 뜻과 비슷

사용 예는 아래와 같음.(날짜 변수 D의 선언과 객체 초기화 동작)-->
<%java.util.Date d = new java.util.Date(); %>
<%--현재 jsp 파일 안에 html 문법 사이로 jsp 문법이 끼어들어 코딩 될 때에는 <% %>를 사용 --%>
<h2>현재 시간 : <%= d %></h2> <!-- 변수에 저장하여 호출-->
<h2>현재 시간 : <%= new java.util.Date()%></h2> <!-- 객체 자체를 호출-->
<%--다만 페이지에 출력될 내용을 기술한다면 <%=%>를 작성, 변수명이나 출력할 내용을 작성--%>


<%--<%jsp 명령 %> : 명령의 실행 --%>
<%--<%= 변수 또는 출력 내용 %> : 웹페이지에 출력 --%>

<!-- 일반텍스트와 JSP명령의 주석처리 -->

<!-- 1. 안녕하세요-일반 텍스트에 주석처리 -->
<%--2. <%= d%> - JSP 코드의 주석처리 --%>

<!--jsp 명령은 html 태그와 함께 파일로 저장되어 서버에 보관됨
클라이언트의 요청을 받으면 해당파일 (~.jsp)이 클라이언트로 전송되어 웹브라우저에 표시가 되게 되는데,
그전에 jsp명령은 이미 실행되어서 결과만 html과 함께 전송됨 -->

</body>
</html>
