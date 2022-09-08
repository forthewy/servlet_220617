<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<div class="display-3 mb-4">물건 올리기</div>
<% 
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	String selectQuery = "select * from `seller`";
	ResultSet result = ms.select(selectQuery);
%>
	<div>
		<div class="d-flex justify-content-between">
				<select class="form-control col-3 h-100">
					<option selected>아이디 선택</option>
					<%
						while (result.next()) {
					%>
							<option><%= result.getString("nickname") %></option>
					<%
						}
					%>
				</select>
				<input type="text" class="form-control col-3 h-100" placeholder="제목">
				<div class="input-group mb-3 col-3 h-100">
			  		<input type="text" class="form-control w-50" placeholder="가격">
			  		<div class="input-group-append">
			   		 <span class="input-group-text">원</span>
		  			</div>
	  			</div>
  		</div>
  		<textarea class="form-control" rows="7"></textarea>
  		<div class="input-group mt-3 mb-3">
			<span class="input-group-text">이미지 url</span>
			<input type="text" class="form-control">
			<div class="input-group-append">
		  	</div>
	  	</div>
	  	<input type="submit" class="btn btn-secondary form-control" value="저장">
</div>
<%
	ms.disconnect();
%>
</div>