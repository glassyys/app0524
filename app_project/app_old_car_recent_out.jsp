<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%
    // 최근 본 상품 목록을 세션에서 가져오기
    /* List<String> recentlyViewedProducts = (List<String>) session.getAttribute("recentlyViewedProducts"); */

String manufacturers_out = (String) session.getAttribute("manufacturers_out");
String kiacars_out = (String) session.getAttribute("kiacars_out");
String yearStaFroms_out = (String) session.getAttribute("yearStaFroms_out");
String yearStaTos_out = (String) session.getAttribute("yearStaTos_out");
String mileageFroms_out = (String) session.getAttribute("mileageFroms_out");
String mileageTos_out = (String) session.getAttribute("mileageTos_out");
String carpriceForms_out = (String) session.getAttribute("carpriceForms_out");
String carpriceTos_out = (String) session.getAttribute("carpriceTos_out");
String fuels_out = (String) session.getAttribute("fuels_out");
String gears_out = (String) session.getAttribute("gears_out");

%>
<!DOCTYPE html>
<html>
<head>
    <title>최근 본 상품 목록</title>
</head>
<body>
    <h1>최근 본 상품 목록</h1>
    <ul>
        <% if (manufacturers_out != null) {
   		%>
           <li><%= manufacturers_out %></li>
           <li><%= kiacars_out %></li>
           <li><%= yearStaFroms_out %></li>
           <li><%= yearStaTos_out %></li>
           <li><%= mileageFroms_out %></li>
           <li><%= mileageTos_out %></li>
           <li><%= carpriceForms_out %></li>
           <li><%= carpriceTos_out %></li>
           <li><%= fuels_out %></li>
           <li><%= gears_out %></li>
        <%
        }
    	%>
    
<%--         <% if (recentlyViewedProducts != null) {
            for (String product : recentlyViewedProducts) { %>
                <li><%= product %></li>
            <% }
        } else { %>
            <li>최근 본 상품이 없습니다.</li>
        <% } %> --%>
    </ul>
</body>
</html>
