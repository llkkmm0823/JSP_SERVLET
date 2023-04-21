<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_Action.jsp</title>
</head>
<body>

<form name = "joinForm" action="03_Action_to.jsp" method = "post">
<!--
	name : 스크립트에서 다른 것들과 구분하여 명명하기 위한 이름으로 사용
			id가 css에서 구분하기 위한 이름이었다면 name은 
			주로 DOM(자바스크립트 또는 제이쿼리)에서 구분하기 위한 이름이라고 보면 됨
	action : 입력란 선택란에 입력하고 선택한 내용이 서버에 전달되고, 페이지가 이동할 대상 파일
	method : 전달방식을 의미
			get은 일반 전송방식(공개방식_주소에 패스워드 및 정보가 노출되어 전달됨)
			post는 비공개 전달방식 사용

 -->

	<label for="name">이름</label><span style="color : red;">*</span>
	<input type= "text" id="name" name="name" value=""><br>
	
	<label for="id">아이디</label><span style="color : red;">*</span>
	<input type= "text" id="id" name="id" value=""><br>
	
	<label for="pwd">비밀번호</label><span style="color : red;">*</span>
	<input type= "password" id="pwd" name="pwd" value=""><br>
	
	<label for="pwd_re">비밀번호 확인</label><span style="color : red;">*</span>
	<input type= "password" id="pwd_re" name="pwd_re" value=""><br>
	
	<label for="address">주소</label><span style="color : red;">*</span>
	<input type= "text" id="address" name="address" value=""><br>

	<input type= "submit" value="회원가입">
	<input type= "reset" value="다시작성">



	</form>



</body>
</html>
