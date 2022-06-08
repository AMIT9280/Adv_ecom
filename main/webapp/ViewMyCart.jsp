<%@page import="com.dao.CartDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart</title>
</head>
<body>
				<jsp:include page="CustomerHeader.jsp"></jsp:include>
				<br>
				<br>
				
				<%
					int userId= -1;
				Cookie c[] = request.getCookies();
				for(int i=0; i<c.length; i++){
					if(c[i].getName().equals("UserId")){
							userId = Integer.parseInt(c[i].getValue());
					}	
				}
				
				%>
				<center>
				<div class="container">
					<%
						for(int i = 0; i<CartDao.carts.size(); i++){
							if(CartDao.carts.get(i).getUserId() != userId){
								continue;
							}
						
					%>
					<table border="1">
						<tr>
								<th>UserId</th>
								<th>ProductId</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>QTY</th>
						</tr>
						<tr>
								<td><%=userId%></td>
						</tr>
					</table>
					<%} %>
				</div>
				</center>
</body>
</html>