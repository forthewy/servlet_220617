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
	<div>
		<ul class="nav nav-fill">
			<% while (result.next()) {
			%>
					<li class="nav-item selling border border-danger m-3 col-3"	width="300px" height="200px" >
					<% if (result.getString("pictureUrl") != null) {
					%>
						<div>
							<img src=<%= result.getString("pictureUrl") %> width="200px" height="100px">
						</div>
					<%
					   } else {
					%>
						<div class="noImg text-secondary">
							이미지 없음
						</div>
					<%
					}
					%>					
						<h5><%= result.getString("title")%></h5>
						<h5><%= result.getInt("price") %></h5>
						<h5><%= result.getString("nickname") %></h5>
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