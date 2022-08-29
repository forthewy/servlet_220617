package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter(); // 한글 깨짐 방지를 out 설정 전에 해줘야 안깨진다.
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일");
		out.print(sdf.format(now));
	}
}
