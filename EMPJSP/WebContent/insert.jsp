<%@page import="com.Dao.empdao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>
    <%@ page import="com.bean.Emp" %>
    <%@ page import="com.Dao.empdao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>	
<body>
		<h2>Inser Page</h2>
		<jsp:useBean id="e" class="com.bean.Emp"></jsp:useBean>
		<jsp:setProperty property="*" name="e"/>
		<%
			int i=empdao.insertData(e);
			if(i>0)
			{
				response.sendRedirect("login.jsp");
			}
			else
			{
				out.print("erroe");
			}
		%>
</body>
</html>