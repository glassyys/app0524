<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>좋아하는 음식</h2>
    <h3>국적 : ${param.country}</h3>
    <h3>동물1 : ${paramValues.animal[0]}</h3>
    <h3>동물2 : ${paramValues.animal[1]}</h3>
    <h3>동물3 : ${paramValues.animal[2]}</h3>

</body>
</html>