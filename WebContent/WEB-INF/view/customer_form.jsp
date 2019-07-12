<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/addcustomer.css">
</head>
<body>
	<div id="header">
		<div id="headercontent">
		<h2>Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
	   <div align="center">
		<h2>Customer Registration</h2>
		</div>
		<div align="center">
		
		<form:form action="create_customer" modelAttribute="customer"
			method="POST">
			<form:hidden path="id"/>

			<table>
				<tbody>
					<tr>
						<td><label>Enter FirstName:</label></td>
						<td><form:input path="fristName" /></td>
					</tr>
					<tr>
						<td><label>Enter LastName:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td><label>Enter Email:</label></td>
						<td>
						<form:input path="email"/>
						</td>
					</tr>
					<tr>
					<td><label></label></td>
						<td><input type="submit" value="Save" class="save"></td>
					</tr>

				</tbody>
			</table>
		</form:form>
		<div style="clear:;"></div>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back
				to List</a>
		</p>
		</div>
		</div>
	

</body>
</html>