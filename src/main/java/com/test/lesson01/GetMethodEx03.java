package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	@Override 
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/json");

		//http://localhost/lesson01/ex03  혹은
		//http://localhost/lesson01/ex03.html 양쪽으로 들어올수 있는것. Get 방식
		
		// Request Parameter
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")); // "60" => 60
		
		PrintWriter out = response.getWriter();
//		out.println("안녕하세요");
//		out.println("user_id:"  + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation) String 으로 response 구성하기
		// {"user_id":"forthewy", "name":"김인간", "age":60} -- dictionary와 모양이 똑같다
		
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
		
	}
}
