<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
		// Map을 테이블로 출력하기
		// {"korean"=85, "english"=72,...}
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
		
		
	%>
	
	<table border=1>
	<%
		Iterator<String> iter = scoreMap.keySet().iterator();	
		while (iter.hasNext()) { // 태그도 반복 시킬수 있다. while 문이 끝나는 괄호 끝나는 곳까지 반복한다.
			String subject = iter.next();
	%>	
			<tr>
				<th><%-- <%= subject %>--%>
				<% 
					if (subject.equals("korean")) {
						out.print("국어");
					} else if (subject.equals("english")) {
						out.print("영어");
					} else if (subject.equals("math")) {
						out.print("수학");
					} else if (subject.equals("science")) {
						out.print("과학");
					}
				%> 
				</th>
				<td> <%= scoreMap.get(subject) %> </td>
			</tr>
	<% 
		}
	%>
	</table>
</body>
</html>