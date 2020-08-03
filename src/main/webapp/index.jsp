<%@page import="com.demo.notetaker.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common.jsp"%>
<title>Note-Taker : Home</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>
	<h1>This is the homepage</h1>

	<%=FactoryProvider.getFactory()%>
</body>
</html>