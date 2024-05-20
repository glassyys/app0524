<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%
    // 최근 본 상품 목록을 담을 리스트 생성
    List<String> recentlyViewedProducts = (List<String>) session.getAttribute("recentlyViewedProducts");
    
    // 최근 본 상품이 없을 경우 새로운 리스트 생성
    if (recentlyViewedProducts == null) {
        recentlyViewedProducts = new ArrayList<>();
    }
    
    // 현재 상품을 최근 본 상품 목록에 추가
    String currentProduct = request.getParameter("productId");
    recentlyViewedProducts.add(currentProduct);
    
    // 최근 본 상품 목록을 세션에 다시 저장
    session.setAttribute("recentlyViewedProducts", recentlyViewedProducts);
%>
