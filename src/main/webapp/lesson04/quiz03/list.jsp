<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	String selectQuery = "select A.*, B.* from `seller` AS A join `used_goods` AS B"
							+ " on A.id = B.sellerId order by A.id desc";
	ResultSet result = ms.select(selectQuery);
	%>
	<div class="mt-3">
		<ul class="nav">
			<% while (result.next()) {
			%>
					<li class="nav-item selling border border-danger p-3 m-1">
					<% if (result.getString("picture") != null) {
					%>
						<div>
							<img src=<%= result.getString("picture") %> width="200px" height="100px">
						</div>
					<%
					   } else {
					%>
						<div class="noImg text-secondary text-center">
							이미지 없음
						</div>
					<%
					}
					%>					
						<span><%= result.getString("title")%></span><br>
						<span><%= result.getInt("price") %></span><br>
						<span class="text-align-start"><%= result.getString("nickname") %></span><br>
					</li>
			<% 
			}
			%>
		</ul>
	</div>
	<%
	ms.disconnect();
	
	%>
</div>