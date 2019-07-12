<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Customer</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div id="header">
		<div id="headercontent"></div>
		<h2>Customer Relationship Manager</h2>
	</div>

	<div id="container">
	<h3></h3>
		<div id="content">
		
		<input type="button" value="Add Customer" onclick="window.location.href='AddFromShow'; return false;"
		class="add-button">
		<table>
		<tr>
		<th>ID</th>
		<th>Frist Name</th>
		<th>Lasty Name</th>
		<th>Email</th>
		<th>Action</th>
		</tr>
		<c:forEach items="${customers}" var="customer">
		
		<!--<c:url var="updatelink" value="/customer/showFormForUpdate">
		<c:param name="customerId" value="${customer.id}"></c:param>
		</c:url>-->
		
		<tr>
		<td>${customer.id}</td>
		<td>${customer.fristName}</td>
		<td>${customer.lastName}</td>
		<td>${customer.email}</td>
		<td><a href="showFormForUpdate?customerId=${customer.id}">Update</a> |
		<a href="delete_customer?customerId=${customer.id}">Delete</a></td>
		</tr>
		
		</c:forEach>
		
		</table>
		</div>
	</div>

</body>
</html>