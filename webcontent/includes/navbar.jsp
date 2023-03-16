<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">E-commerce</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav ml-auto">
        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        <a class="nav-link" href="cart.jsp">Cart</a>
        <%if(auth!=null){ %>
        <a class="nav-link" href="order.jsp">Orders</a>  
        <a class="nav-link actice" href="LogoutServlet">Logout</a>  
        <% }else{%>
        <a class="nav-link actice" href="login.jsp">Login</a>  
        <%} %>
      </div>
    </div>
  </div>
</nav>