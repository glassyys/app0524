<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>개인정보 수정 내역입니다.</h2>
    <h3>이름 :${param.name}</h3>
    <h3>이메일 :${param.email}</h3>
    <h3>관심분야1 : ${paramValues.interest[0]}</h3>
    <h3>관심분야2 : ${paramValues.interest[1]}</h3>
    <h3>관심분야3 : ${paramValues.interest[2]}</h3>
</body>
</html>