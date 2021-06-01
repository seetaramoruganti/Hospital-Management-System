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
	<div class="container" align="center">
		<form:form action="register" method="post" modelAttribute="patient">
			<table class="table table-sm">
				<h2>Patient Registration</h2>
				<div>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input class="form-control" path="name" type="text" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="email">Email</form:label></td>
						<td><form:input class="form-control" path="email" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="password">password</form:label></td>
						<td><form:password class="form-control" path="password" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="address">Address</form:label>
							</form></td>
						<td><form:input class="form-control" path="address"
								type="text" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="mobile">Mobile</form:label></td>
						<td><form:input class="form-control" path="mobile"
								text="text" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="sex">sex</form:label></td>
						<td><form:input class="form-control" path="sex" type="text" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="dob">Date of Birth</form:label></td>
						<td><form:input class="form-control" path="dob" type="date" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td><form:label path="age">Age</form:label></td>
						<td><form:input class="form-control" path="age" type="number" /></td>
					</tr>
				</div>
				<div>
					<tr>
						<td>Blood Group</td>
						<td><form:input class="form-control" path="bloodgrp"
								type="text" /></td>
					</tr>
				</div>
				<div align="center">
					<tr>
						<td></td>
						<td align="right" ><input class="btn btn-success" type="submit"
							value="Register"></input></td>
					</tr>
				</div>
			</table>
		</form:form>

	</div>





	<!-- java Script files here -->

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>