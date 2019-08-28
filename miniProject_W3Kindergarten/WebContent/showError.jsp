<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% String url = application.getContextPath() + "/"; %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Actor|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Error</title>
</head>

<body>
<br><br><br>

	
		<h2 style="font-size: 23px; font-weight: 900; margin-top: 150px; margin-left: 60px; ">${requestScope.errorMsg}</h2>
		<br><br><br>
		
		<input type="button" value="Back" onclick="history.back(-1);" style="width: 50px; height: 30px;  margin-left: 400px; margin-top: 180px;">
	
	
</body>
</html>