<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration</title>
<!-- CSS files here-->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<div>
		<form:form action="savePatient" method="post" modelAttribute="addPatient">
			<table>
			<caption>Patient Registration</caption>
				<tr>
					<td>Name :</td>
					<td><form:input path="name" type="text" /></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>password :</td>
					<td><form:password path="password" /></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:input path="address" type="text" /></td>
				</tr>
				<tr>
					<td>Mobile :</td>
					<td><form:input path="mobile" text="text" /></td>
				</tr>
				<tr>
					<td>sex :</td>
					<td><form:input path="sex" type="text" /></td>
				</tr>
				<tr>
					<td>Date of Birth :</td>
					<td><form:input path="dob" type="date" /></td>
				</tr>
				<tr>
					<td>Age :</td>
					<td><form:input path="age" type="number"/></td>
				</tr>
				<tr>
					<td>Blood Group :</td>
					<td><form:input path="bloodgrp" type="text"/></td>
				</tr>
				<tr>
					<td><button class="btn btn-success" type="submit" >Register</button></td>
				</tr>
			</table>
		</form:form>

	</div>





	<!-- java Script files here -->

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>