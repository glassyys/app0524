<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date,  java.text.SimpleDateFormat"
    import= "thirdproject.Reservation"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 결과</title>
    <link rel="stylesheet" href="styles.css">
    <style>
     body{
     background-image:URL('https://park.airport.co.kr/resources/images/common/img-visual-02.png');
     }
    </style>
</head>
<body>

    <div class="container">
        <h1>예약 결과</h1>
        <% 
            // 폼 데이터 받아오기
            String airport = request.getParameter("airport");
            String parkingLot = request.getParameter("parkingLot");
            String entryDate = request.getParameter("entryDate");
            String exitDate = request.getParameter("exitDate");
            String carNumber = request.getParameter("carNumber");
            
            // 날짜 문자열을 Date 객체로 변환
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date entryDate1 = dateFormat.parse(entryDate);
            Date exitDate1 = dateFormat.parse(exitDate);

            // Reservation 객체 생성 및 주차 요금 계산
            Reservation reservation = new Reservation(entryDate1, exitDate1);
            int parkingFee = (int)reservation.CalculateParkingsale();
        %>
        
        <p><strong>공항:</strong> <%= airport %></p>
        <p><strong>주차장:</strong> <%= parkingLot %></p>
        <p><strong>입차 날짜:</strong> <%= entryDate %></p>
        <p><strong>출차 날짜:</strong> <%= exitDate %></p>
        <p><strong>차량 번호:</strong> <%= carNumber %></p>
        <p><strong>주차 요금:</strong> <%= parkingFee %>원</p>
        <p>예약이 완료되었습니다. 감사합니다!</p>
        
        <a href="mainimage.html"><span align="center">메인으로 돌아가기</span></a>
    </div>
</body>
</html>