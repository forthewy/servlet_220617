package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		Date now = new Date();
		
		
		PrintWriter out = response.getWriter();
		out.println("안녕하세요");
		out.println(now);
		
		// formatter
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
				
		
		// 메소드 
		// input -> 메소드 -> Output
		// request -> 서버구현 -> response
		// HttpMethod -> 	 -> 응답값 Http Status Code
		// GET					 
		// POST
		
		// 응답값 Http Status Code	
		// 404 페이지 찾을수 없음(주소,path,mapping)
		// 200 ok
		// 500.. : 서버 에러 (eclipse의 console error 원인)
		
	}
}
