package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/ex02_delete")
public class DeleteEx02 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// redirect? contenttype 생략
		// method가 get인 이유는 a태그로 요청할 것이기 doGet
		
		//request 삭제할 id 받아옴
		int id = Integer.parseInt(request.getParameter("id"));
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query 수행
		String deleteQuery = "delete from `new_user` where `id`=" + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 목록 화면 이동 - redirect 302 남의 사이트라면 다 써줘야함. 
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
