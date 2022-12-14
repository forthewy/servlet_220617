package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex05")
public class PostMethodEx05 extends HttpServlet {

	@Override // method에 반드시 post 라고 적어야 doPost 가능 아니면 에러
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		// Post
		// - 쿼리 스트링이 붙지 않는다.
		
		
		
		// request parameter
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");

		// 출력 response body
		PrintWriter out = response.getWriter();
//				out.println("userId:" + userId);
//				out.println("name:" + name);
//				out.println("birth:" + birth);
//				out.println("email:" + email);

		// 테이블로 출력
		out.print("<html></html><head><title>회원 정보</title></head>");
		out.print("<table border = 1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.print("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>이메일</th><td>" + email + "</td></tr>");
		out.print("</table>");
		out.print("<body></body>");
	}
}
