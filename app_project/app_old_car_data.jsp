<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
	<%
		String manufacturers = request.getParameter("manufacturer");
		String kiacars = request.getParameter("kiacar");
		String yearStaFroms = request.getParameter("yearStaFrom");
		String yearStaTos = request.getParameter("yearStaTo");
		String mileageFroms = request.getParameter("mileageFrom");
		String mileageTos = request.getParameter("mileageTo");
		String carpriceForms = request.getParameter("carpriceForm");
		String carpriceTos = request.getParameter("carpriceTo");
		String fuels = request.getParameter("fuel");
		String gears = request.getParameter("gear");
		
	    session.setAttribute("manufacturers_out", manufacturers);
	    session.setAttribute("kiacars_out", kiacars);
	    session.setAttribute("yearStaFroms_out", yearStaFroms);
	    session.setAttribute("yearStaTos_out", yearStaTos);
	    session.setAttribute("mileageFroms_out", mileageFroms);
	    session.setAttribute("mileageTos_out", mileageTos);
	    session.setAttribute("carpriceForms_out", carpriceForms);
	    session.setAttribute("carpriceTos_out", carpriceTos);
	    session.setAttribute("fuels_out", fuels);
	    session.setAttribute("gears_out", gears);

		if (manufacturers != null) {
	%>
		<h3>제조사:<%=manufacturers%></h3>
		<h3>차종:<%=kiacars%></h3>
		<h3>연식:<%=yearStaFroms%> ~ <%=yearStaTos%>년식</h3>
		<h3>주행거리:<%=mileageFroms%> ~ <%=mileageTos%>km</h3>
		<h3>가격:<%=carpriceForms%> ~ <%=carpriceTos%>만원</h3>
		<h3>연료:<%=fuels%></h3>
		<h3>기어:<%=gears%></h3>
	<%
		}
	%>

</body>
</html>