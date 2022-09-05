<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
	<div class="d-flex pt-3">
		<%-- 로고 영역 --%>
		<div class="logo col-3">
			<h3>
				<a href="/lesson03/quiz02/list_template.jsp" class="text-success">Melong</a>
			</h3>	
		</div>
		<div>
			<form method="get" action="/lesson03/quiz02/info_template.jsp">
				<div class="input-group">
					<input type="text" class="form-control" name="title">
					<button class="btn btn-info" type="submit">검색</button>
				</div>
			</form>
		</div>
		</div>
</header>