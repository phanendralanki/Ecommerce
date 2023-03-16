<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="com.bean.*" %>
<%@page import = "com.dao.*" %>
<%@page import ="java.util.*" %>
<% User auth = (User)request.getSession().getAttribute("auth");

	if(auth!=null){
		request.setAttribute("auth",auth);
	}
	
	ProductDao pd = new ProductDao(DBConnection.createConnection());
	List<Product> products = pd.getAllProducts();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>

<%@include file="includes/head.jsp"%>
</head>
<body>


	<%@include file="includes/navbar.jsp"%>

	<!--out.print(DBConnection.createConnection());)); %>   -->
	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
		<%
			if(!products.isEmpty()){
				for(Product p: products)
					//out.println(p.getCategory());
				{%>
				
						
					<div class="col-md-3 my-3">
					<div class="card w-100" style="width: 18rem;">
						<img src="product-images/female-shoes.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title"><%=p.getName()%></h5>
							<h6 class="price">Price :$ <%=p.getPrice() %></h6>
							<h6 class="category">category: <%=p.getCategory()%> </h6>
							<div class="mt-3 d-flex justify-content-between">
							<a href="#" class="btn btn-dark">Add to cart</a>
							<a href="#" class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
				<%} 
			}%>
		
	</div>
</div>

	<%@include file="includes/foot.jsp"%>

</body>
</html>