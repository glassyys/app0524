<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="backweb.search.Song"
    import="backweb.search.Album"
    import="backweb.search.SongData"%>
<!DOCTYPE html>
<html>
<head>
<%
	SongData songdata = new SongData();
%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<link>
</head>
<body>
<form>
	<input type="text" id="searchInput" name="searchKeyword">
	<input type="submit" id="searchSubmit" value="검색">
</form>
<%
	String searchKeyword = request.getParameter("searchKeyword");
	if(searchKeyword != null){
%>
	<h2>노래 정보</h2>
<%		
		for (Song song:songdata.songdata){
			if(song.getGenre().equals(searchKeyword)){
				%>
					<div>
					<img src="<%=song.getImage()%>"></img>
					<h3><%=song.getTitle() %> - <%=song.getAuthor()%></h3>
					</div>
				<%
			}
		}
%>
	<h2>앨범 정보</h2>
<%		
		for (Album album:songdata.albumdata){
			if(album.getGenre().equals(searchKeyword)){
				%>
					<img src="<%=album.getImage()%>"></img>
					<h3><%=album.getTitle() %> - <%=album.getAuthor()%></h3>
		
				<%
			}
		}
	}
%>
</body>
</html>