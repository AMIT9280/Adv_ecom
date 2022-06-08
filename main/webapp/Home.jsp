<%@page import="com.bean.UserBean"%>
<%@page import="com.bean.ProductBean"%>
<%@page import="com.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'
	crossorigin='anonymous'></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

</head>
<body>
	<%
	UserBean user = new UserBean();
	%>
	<jsp:include page="CustomerHeader.jsp"></jsp:include>
		<div class="container">
			<br> <br>
			<%
			int productCounter = 0;
			for (int i = 1; i <= Math.ceil(ProductDao.products.size() / 3.0); i++) {
			%>
			<div class="row">
				<%
				for (int j = 1; j <= 3; j++) {
					if (productCounter >= ProductDao.products.size())

						break;
					ProductBean p = ProductDao.products.get(productCounter);
				%>

				<div class="col-md-3">
					<div class="card">
						<div class="card-body">
							<%
							if (productCounter == 0) {
							%>
							<img alt="I phone 12" src="images/i phone 12.avif" width="100px">
							<%
							}
							%>
							<%
							if (productCounter == 1) {
							%>
							<img alt="" src="images/i phone 13.jfif" width="100px">
							<%
							}
							%>
							<%
							if (productCounter == 2) {
							%>
							<img alt="" src="images/Samsung 12.jfif" width="100px "
								height="100px">
							<%
							}
							%>
							<%
							if (productCounter == 3) {
							%>
							<img alt="" src="images/realme-2-pro.png" width="100px "
								height="100px">
							<%
							}
							%>
							<h4 class="card-title"><%=p.getName()%></h4>
							<p class="card-text">
								price:
								<%=p.getPrice()%>
								<br>Category :
								<%=p.getCategory()%>
							</p>
							<a href="CartServlet?ProductId=<%=p.getProductId()%>&UserId=${cookie.UserId.value}" class="btn btn-primary">Add To Cart <i class="fas fa-shopping-cart"></i>	</a>
						</div>
					</div>
				</div>
				<!-- col-m3 -->
				<%
				productCounter++;
				} //j
				%>
			</div>
			<br>
			<!-- row -->
			<%
			}
			%>
		</div>
</body>
</html>