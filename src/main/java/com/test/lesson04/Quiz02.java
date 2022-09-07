package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/quiz02")
public class Quiz02 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// create
		String createQuery = "create table bookmark ("
				+ "	id int primary key not null auto_increment,"
				+ " name varchar(30) not null,"
				+ "	url varchar(50) not null,"
				+ "	createdAt timestamp default current_timestamp,"
				+ " updatedAt timestamp default current_timestamp"
				+ ")ENGINE = InnoDB default charset=utf8mb4";
		
		try {
			ms.update(createQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// insert
		String insertQuery = "insert into bookmark (name, url)"
							+ "values ('마론달', 'http://marondal.com'), ('구글', 'https://google.com'),"
							+ "('네이버', 'https://naver.com'),('다음', 'https://daum.com');";

		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
