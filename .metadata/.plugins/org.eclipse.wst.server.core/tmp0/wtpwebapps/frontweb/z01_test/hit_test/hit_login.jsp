<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
<style>

</style>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    if ("himan".equals(id) && "4321".equals(pwd)) {
%>
     <h3 id="loginMessage_s">[<%= id %>] 로그인 성공</h3> 
<% } else { 
%>
	<h3 id="loginMessage">[<%= id %>] 로그인 아이디와 비밀번호를 확인하세요!</h3> 
<% } 
%>
<%-- 	<h3>아이디:[${param.id}]</h3>
	<h3>아이디:[${param.pwd}]</h3> --%>

</body>
<script type="text/javascript">

/* var loginMessage_s = document.querySelector('#loginMessage_s');
var loginMessage = document.querySelector('#loginMessage');

	// 텍스트 색상을 빨간색으로 변경합니다.
	loginMessage_s.style.color = 'blue';
    loginMessage.style.color = 'red';
*/
    /*
    var inputMessage = document.querySelector('#messageInput');
    inputMessage.value = "로그인 아이디를 확인하세요"
    inputMessage.style.width = '300px';
    inputMessage.style.height = '40px';
    inputMessage.style.fontSize = '20px';
    inputMessage.style.backgroundcolor = 'yellow';
    inputMessage.style.border  = '2px solid black';
    inputMessage.style.color = 'red'; */
/*     inputMessage.style.fontWeight = 'bold';
 */
</script>
</html>
