package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/quiz02_delete")
public class DeleteQuiz02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request param 꺼내기 (삭제할 id)
		int deleteId = Integer.valueOf(request.getParameter("deleteId")); // null 일수 없으니 int로 받는다.
		String deleteQuery = "delete from `bookmark` where `id`="  + deleteId; // 
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		// db 연결 해제
		ms.disconnect();
		
		// 목록화면 이동 - redirect
		response.sendRedirect("/lesson04/quiz02.jsp");
		
	}
}
