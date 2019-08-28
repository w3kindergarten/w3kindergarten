<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Actor|Capriola|Luckiest+Guy|Playfair+Display+SC|Rock+Salt|Taviraj&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="main.css">
<title>Insert title here</title>
</head>
<body>
<div class = "updatepage">
<form class ="updatepageform" action="control" method="post" style ="padding-left: 165px; padding-top: 90px;font-family: 'Rock Salt', cursive ;">
	<b style="font-size: 35px; font-weight: 700; color: white; padding-left: 10px;">My Info</b><br><br>
	<input type="text" name="username" style="width:170px; text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.userName}" readonly><br>
	<input type="text" name="password" style="width:170px;text-align: center; 	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.password}"><br>
	<input type="text" name="nickname" style="width:170px;text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.nickName}"><br>
	<input type="text" name="email"  style="width:170px;text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.email}" ><br>
	<input type="text" name="phone"  style="width:170px;text-align: center;	font-family: 'Capriola', sans-serif;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);" value="${user.phone}"><br>
		
	<input type="hidden" name="command" value="userUpdate"><br>
	
	<input type="submit" value="Edit" style="width:80px; text-align: center;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); padding-left:20px; padding-right: 20px; margin-right:10px;  font-family: 'Rock Salt', cursive ;">
	<input type="submit" value="Delete" onclick="location.href='control?command=userDelete'" style=" width:80px; padding-left:12px; padding-right: 12px; margin-right:15px; font-family: 'Rock Salt', cursive ;box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12);">
</form>
	<input type=button value="Close" onclick="self.close()" style="width:80px; float: right;font-family: 'Rock Salt', cursive ;margin-right:15px; margin-top: 30px;	box-shadow: 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0
		rgba(0, 0, 0, 0.12); ">
</div>

</body>
</html>