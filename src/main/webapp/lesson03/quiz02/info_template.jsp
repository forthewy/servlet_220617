<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 목록</title>

<!-- bootstrap -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style>
header {
	height: 70px;
}
nav {
	height: 40px;
}

nav a:link { color: black; text-decoration: none;}
nav a:visited { color: black; text-decoration: none;}
nav a:hover { color: black; text-decoration: underline;}
content {
	height: auto;
}
.songInfoText {
	font-size : 13px;
}
footer {
	height: 50px;
}

</style>

</head>
<body>
<%-- 조각 모음에 변화가 있어야 할때 jsp를 나눈다. --%>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp"/> 
		<jsp:include page="menu.jsp"/> 
		<jsp:include page="info.jsp"/>
		<jsp:include page="footer.jsp"/> 
	</div>
</body>
</html>