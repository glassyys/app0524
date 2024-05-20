<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 정보</h2>
	<h3>이름:${param.name}</h3>
	<h3>이메일:${param.email}</h3>
	<h3>암호:${param.pwd}</h3>
    <h3>성별:${param.gender}</h3>
    <h3>국가:${param.country}</h3>

</body>
</html>