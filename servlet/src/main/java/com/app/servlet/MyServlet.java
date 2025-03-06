package com.app.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/home")
//	URL을 mapping해주는 역할
//	하지만 파일 하나의 어노텐션이 다 들어가 있으면, 유지보수가 어렵다.
//	따라서 web.xml을 만들어서 한 번에 일괄적으로 처리한다.
//	프로젝트 하나당 web.xml 하나를 가지고있다.


public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		필수 인코딩 설정 입출력 UTF-8형식으로 변환
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8;");
		
		PrintWriter out = response.getWriter();
		
//		String name = "";
//		int age = 0, realAge = 0;
//		  
//		name = request.getParameter("name");
//		age = Integer.parseInt(request.getParameter("age"));
//		realAge = age - 1;
//		  
//		  
//		out.print("<h1>Hello, JSP!😎</h1>");
//		out.print(name + "님 환영합니다!");
//		out.print("나이는 :" + age + "만 나이는 :" + realAge);

		 int num1 = 0, num2 = 0;
	      String result = "";
	      num1 = Integer.parseInt(request.getParameter("num1"));
	      num2 = Integer.parseInt(request.getParameter("num2"));
	      
	      result = (num1 + num2) % 2 == 0 ? "짝수" : "홀수";
	      out.print(num1 +"과 " + num2 + "의 두 수를 더한 결과값은: " + result + "입니다.");
	      out.close();
	      
	      
	      
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
