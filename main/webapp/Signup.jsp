<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


			<jsp:include page="CustomerHeader.jsp"></jsp:include>
			<center>
	<h3>Signup</h3>
	<form action="SignupServlet" method="post">
		Full Name <input type="text" name="Name"> <br> <br>Email <input
			type="text" name="Email"> <br> <br>Password <input
			type="password" name="pass"> <br> <br>Gender Male <input
			type="radio" name="Gender" value="Male"> Female <input
			type="radio" name="Gender" value="female"> <br> <br><input
			type="submit" value="Signup">
	</form>
</center>
</body>
</html>