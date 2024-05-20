<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>[${param.name}]</h3>
	<h3>1. 오늘 출결사항(전날, 9:00지각/조퇴사유)<br>답변:${param.answer01}</h3>
	<h3>2. 수업에 긍정적인 마음으로 집중하였는가?</h3>
	<h3>1) 수업시간에 수업관련 없는 채팅이나 동영상 등 방해되는 내용을 접하지 않았는가? <br>답변:${param.answer02}</h3>
	<h3>2) 수업시간에 효과적으로 집중을 하였는가? <br>답변:${param.answer03}</h3>
	<h3>3. 수업 진행 중, 어려웠던 내용과 해결해야할 과제.<br>답변:${param.answer04}</h3>
	<h3>​# 조별로 공통적으로 이해가 힘든 내용이나 어려운 내용 정리해서 전달해주세요. <br>내용:${param.answer05}</h3>
	<h3>​# ​수업관련 건의사항이 있으면 전달 부탁드립니다. <br>내용:${param.answer06}</h3>
    <%
        String name = request.getParameter("name");
        if (name != null && !name.isEmpty()) {
    %>
    <h3>[<%= name %>]</h3>
    <% } else { %>
    <h3>No name provided</h3>
    <% } %>

</body>
</html>