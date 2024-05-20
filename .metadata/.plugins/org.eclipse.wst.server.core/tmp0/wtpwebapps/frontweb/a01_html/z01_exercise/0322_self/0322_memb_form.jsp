<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>입력받은 회원정보입니다.</h2>
    <h3>이메일 :${param.email}</h3>
    <h3>비밀번호 :${param.pwd}</h3>
    <h3>휴대전화 번호 :${param.phone}</h3>
    <h3>성별 :${param.gender}</h3>
    <h3>생년월일 :${param.birdate}</h3>

</body>
</html>