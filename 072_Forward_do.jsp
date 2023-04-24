<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
// 072_Forward_do.jsp

String sAge = request.getParameter("age");
int age = Integer.parseInt( sAge );
//int age = Integer.parseInt( request.getParameter("age") );

if( age <= 19 ){
%>
	<script type="text/javascript">
		alert("20세 미만이므로 입장이 불가합니다");
		// location.href='071_ForwardForm.jsp';
		history.go(-1);  // 뒤로 버튼을 클릭한 효과
	</script>
<%
}else{
	// 073_ForwardResult.jsp 로 이동(forward)합니다.
	
	// request 객체에는 Attribute 라는 저장소(HashMap 형식과 비슷한 멤버변수)가 있습니다
	// 전달할 데이터를 Attribute 에다가 각 자료의 이름과 값을 같이 저장하고, 
	// forward(이동)하면 목적지에 해당 데이터가 같이 이동합니다
	
	//  Attribute 라는 저장소에 name  이라는 이름으로 "홍길동" 이라는 값을 저장해두고 
	// 073_ForwardResult.jsp 로 이동(forward)합니다. 이때 현재페이지에 존해하면서 보내고자하는 내용을 저장한
	// request 와 response도  같이 이동합니다
	
	// 073_ForwardResult.jsp 에서는 이전 페이지에서 보내준  request와 response 를 이용해서  
	// 저장해둔 name 값을 꺼내 사용할수가 있습니다.
	// 저장 메서드 : setAttribute()    추출 메서드 : getAttribute()
	
	
	// request 에 name=홍길동 을 저장합니다
	request.setAttribute("name",  "홍길동");  // "name"이 키 , "홍길동"이 밸류
	
	// 포워드를 위한 객체 생성 및 이동 페이지 설정
	RequestDispatcher dp = request.getRequestDispatcher("073_ForwardResult.jsp");
	// 현재의 request와 response 를 갖고 목적지로 이동
	dp.forward(request, response);
	
	// 현재 페이지의 request 객체의 수명은 forward로 전달될 다음 페이지 까지 입니다. 
	// 보통 파라미터를 통해서 정보를 전달하고 request.getParmeter() 를 사용하여 전달된 값을 추출하여 사용하지만, 
	// 위의 RequestDispatcher 는 파라미터대신 request 내부의 Attribute 를 사용하여 전달인자를 저장하고, 
	// 그냥 놔두면 수명을 다해 없어질 현재 페이지의 request 와 response가 함께 forward라는 명령으로 페이지를 이동합니다...
	// 이동한 페이지에서 Attribute 를 사용하게 합니다.
				
	// forward 방식으로 이동된 페이지는 한글에 대한 인코딩 작업이 필요가 없습니다.
}
%>













