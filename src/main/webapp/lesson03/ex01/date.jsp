<%@page import="java.util.Calendar"%>
<%@ page pageEncoding="UTF-8"%> <%-- 정적 방식 jsp 필수 내용. 여기는 조각 페이지 --%>
<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
</p>