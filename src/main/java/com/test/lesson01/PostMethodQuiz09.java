package com.test.lesson01;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")

// post 는 무조건 form 태그사용
public class PostMethodQuiz09 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
	}
}
