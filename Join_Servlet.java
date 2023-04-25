package com.ezen.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Join_Servlet
 */
@WebServlet("/Join_Servlet")
public class Join_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 전달된 파라미터를 해당 변수를 생성해서 전달받고, 
		//필요항목들을 변환해서 (gender : 1, 2	->"남" "여") request에 setAttribute로 담아
		//102_JSP_Servlet_EX02.jsp로 포워딩함
		
		String id = (String) request.getParameter("id");
		String pwd = (String)request.getParameter("pwd");
		
		
		//성별
		String gender = request.getParameter("gender");
		//메일수신
		String chk_mail = request.getParameter("chk_mail");

		//하고싶은말
		String content = request.getParameter("content");

		//구입항목
		String [] item = request.getParameterValues("item");

		//직업
		String job = request.getParameter("job");

		//관심분야
		String [] interest = request.getParameterValues("interest");

		request.setAttribute("id",id);
		request.setAttribute("pwd",pwd);
		request.setAttribute("content",content);

		
		if(gender.equals("1"))request.setAttribute("gender","남성");
		else request.setAttribute("gender","여성");
		
		if(chk_mail.equals("1"))request.setAttribute("chk_mail","수신");
		else request.setAttribute("chk_mail","거부");
		
		//item처리
		// 선택된 번호에 따른 물건이름이 저장될 배열을 생성
		// 전달된 배열의 크기와 같은 크기로 생성
		String [] sItem = new String [item.length];
		for(int i=0; i<item.length;i++){
				switch(item[i]) {
				case"1" : sItem[i]="신발"; break;
				case"2" : sItem[i]="가방"; break;
				case"3" : sItem[i]="벨트"; break;
				case"4" : sItem[i]="모자"; break;
				case"5" : sItem[i]="시계"; break;
				case"6" : sItem[i]="주얼리"; break;
				}
		}
		request.setAttribute("item", sItem);
		
		switch(job) {
		case"1" : request.setAttribute("job" , "학생"); break;
		case"2" : request.setAttribute("job" , "컴퓨터/인터넷"); break;
		case"3" : request.setAttribute("job" , "언론"); break;
		case"4" : request.setAttribute("job" , "공무원"); break;
		case"5" : request.setAttribute("job" , "군인"); break;
		case"6" : request.setAttribute("job" , "서비스업"); break;
		case"7" : request.setAttribute("job" , "교육"); break;
		}
		
		String [] inter = new String[interest.length];
		
		for(int i=0; i<inter.length;i++) {
			switch(interest[i]) {
			case"1" : interest[i]="에스프레소"; break;
			case"2" : interest[i]="로스팅"; break;
			case"3" : interest[i]="생두"; break;
			case"4" : interest[i]="원두"; break;
			case"5" : interest[i]="핸드드립"; break;			
			}
		}
		request.setAttribute("interests",inter);
		
		RequestDispatcher dp = request.getRequestDispatcher("02/102_JSP_Servlet_EX02.jsp");
		dp.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
