<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.*" %>
<% User auth = (User)request.getSession().getAttribute("auth");

	if(auth!=null){
		//request.setAttribute("auth",auth);
		response.sendRedirect(" index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>

<%@include file="includes/head.jsp"%>
</head>
<body>


	<%@include file="includes/navbar.jsp"%>


	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="UserLogin" method="post">
					<div class="form-group">
						<label>Email Address:</label> <input type="email"
							class="form-control" name="email" placeholder="Enter your email"
							required>
					</div>

					<div class="form-group">
						<label>password</label> <input type="password"
							class="form-control" name="password" placeholder="******"
							required>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

				</form>
			</div>
		</div>
	</div>



	<%@include file="includes/foot.jsp"%>

</body>
</html>