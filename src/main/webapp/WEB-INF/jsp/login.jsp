<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HMS Login</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<c:url value="/resources/login/login.css"/>"
	rel="stylesheet">
</head>
<body>
	<div>
		<h2>Hospital Management System</h2>
		<div class="main">
			<form:form action="login" method="post" modelAttribute="user">
				<%--<table>--%>
					<caption>
						<p class="sign" align="center">Sign in</p>
					</caption>

					<%--<div>
						<tr>
							<td><form:label path="email">Email</form:label></td>
							<td>
							--%><form:input path="email" type="String" class="un "
									align="center" placeholder="Username" />
						<%--</td></tr>
					</div>
					<div>
						<tr>
							<td><form:label path="password">password</form:label></td>
							<td>--%>
							<form:password class="pass" align="center"
									placeholder="Password" path="password" />
									<%--</td>
						</tr>
					</div>
					<div>
						<tr>
							<td>--%>
							<button class="submit" align ="center" type="submit">Login</button>
							<br>
							<p align="center"><font color="red">${msg}</font></p>
							<%--</td>
						</tr>
					</div>

				</table>--%>
			</form:form>
		</div>
		
	</div>

</body>
</html>
<%-- 
  <form class="form1">
		<input class="un " type="text" align="center" placeholder="Username">
		<input class="pass" type="password" align="center" placeholder="Password">
		<a class="submit" align="center">Sign in</a>
		<p class="forgot" align="center"><a href="url">Forgot Password?</p>
	  </form> --%>