<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/addcustomer-style.css">
	
</head>
<body>
	<div id="header">
		<div id="headercontent"></div>
		<h2>Customer Relationship Manager</h2>
	</div>

	<div id="container">
		<h3>Customer Registration</h3>
		<form:form action="create_customer" modelAttribute="customer"
			method="POST">

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
						<td><input type="text" name="email" size="45"></td>
					</tr>
					<tr>
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

</body>
</html>