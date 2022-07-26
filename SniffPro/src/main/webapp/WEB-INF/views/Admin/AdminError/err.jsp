<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
	<%
	String errorCode=(String)request.getAttribute("errorCode");
	String errorMsg=(String)request.getAttribute("errorMsg");
	
	%>
	
	<div>에러코드:<%=errorCode %></div>
	<div>에러메세지:<%=errorMsg %></div>
	<div>박희은(3593)연락바람!</div>
</body>
</html>