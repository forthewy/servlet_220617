<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        


<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
	<%-- name은 그룹화용, 전달용 --%>
		<%
		int length = Integer.valueOf(request.getParameter("length"));
		String[] unitArr = request.getParameterValues("unit");
		%>
		<%
		Map<String, Double> units = new HashMap<>();
		units.put("in", 0.393701);
		units.put("yd", 0.010936);
		units.put("ft", 0.032808);
		units.put("m", 0.01);
		
		%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h2><%= length %>cm</h2>
		<hr>
		<p>
			<h2>
			<% 	for (String unit: unitArr) {
				out.print((units.get(unit)* length) + " " + unit + "<br>");
				}
			
			// if - else if 문으로도 만들수 있다. String.equals 문 사용
			// unit.equals("in")
			// 여기는 println 안됨. html 문서이다.
			%>
			</h2>
		</p>
	</div>
</body>
</html>