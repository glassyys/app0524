<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>호텔 방 예약 내역입니다.</h2>
    <h3>예약할 방의 타입 :${param.roomtype}</h3>
    <h3>체크인 날짜 :${param.checkin}</h3>
    <h3>체크아웃 날짜 :${param.checkout}</h3>
    <h3>특별요청사항 :${param.specreq}</h3>
    <h3>약관에 동의 여부 :${param.agree}</h3>
</body>
</html>