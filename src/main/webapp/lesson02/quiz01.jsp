<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%! 
public int getSum(int n) {
	int sum = 0;
	for (int i = 1; i <= n; i++) {
		sum += i;
	}
	return sum;
}
%>
	
<%
	int[] scores = {80, 90, 100, 95, 80};
		
	double avg = 0;
	for (int i = 0; i < scores.length; i++) {
		avg += (scores[i] / (double)scores.length);
	}
%>
	
<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	Iterator<String> iter = scoreList.iterator();
	while(iter.hasNext()) {
		String check = iter.next();
		if (check.equals("O")) {
			score += 100 / scoreList.size();	
		}
	}	
%>
	<!--  ctrl + spacebar import 자동 -->
<%
		String birthDay = "20010820";
		int age = 2022 - Integer.parseInt(birthDay.substring(0,4));
		//out.print(age); // out 은 jsp에는 기본으로 사용 가능 여기서 출력하기..
%>
	

	<h1>1부터 50까지의 합계 <%= getSum(50) %> 입니다</h1>
	<h1>평균 점수는 <%= avg %> 입니다</h1>
	<h1>채점 결과는 <%= score %>점입니다</h1>
	<h1><%= birthDay %>의 나이는 <%= age + 1 %>세 입니다</h1>

</body>
</html>