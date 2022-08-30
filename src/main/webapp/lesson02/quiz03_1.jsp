<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        


<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
	<% 
	int weight = Integer.valueOf(request.getParameter("weight"));
	int height = Integer.valueOf(request.getParameter("height"));
	double bmi = weight / ((height / 100.0) * (height / 100.0));
	String result = null; // null 로 넣어준다
	
	if (bmi <= 20) {
		result = "저체중";
	} else if (bmi <= 25) {
		result = "정상";
	} else if (bmi <= 30) {
		result = "과체중";
	} else {
		result = "비만";
	}
	%>
	
	<div class="container">
		<div class="display-4"><strong>BMI</strong> 측정 결과</div>
		<div class="display-2">
			당신은 <span class="text-info"> <%= result%> </span> 입니다
	<!--  span 태그는 인라인 태그로 줄바꿈 되지 않는다, 띄어쓰기가 안된다면 d-flex를 확인해본다. -->
		</div>
		<div>	
		BMI 수치: <%= bmi %>
		</div>
	</div>
</body>
</html>