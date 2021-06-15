<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Fill Form</h2>
			<form action="insert.jsp" method="post">
			<table align="center" border="2">
			<tr>
			<td>Name</td>
			<td><input type="text" name="name"></td>
			</tr>
			<tr>
			<td>Contact</td>
			<td><input type="text" name="contact"></td>
			</tr>
			<tr>
			<td>Email</td>
			<td><input type="text" name="email"></td>
			</tr>
			<tr>
			<td>Password</td>
			<td><input type="password" name="password"></td>
			</tr>
			<tr>
			
			<td align="center"><input type="submit" name="signup"></td>
			</tr>
			<tr>
			<td><a href="login.jsp">ALready Have Account</a></td>
			</tr>
			</table>
			</form>
</body>
</html>