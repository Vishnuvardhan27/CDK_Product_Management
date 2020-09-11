<%@page import="com.dao.ProductDAOImpl"%>
<%@page import="com.pojo.Product"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Product Management : HomePage</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
<% Object sessionObject=session.getAttribute("username");
String status="login";%>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <h1><a href="index.jsp">Product<span class="logo_colour">Management</span></a></h1>
          <h2>Single point for Everything </h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.jsp">Home</a></li>
          <li><a href="contact.html">Contact Us</a></li>
           <%if(sessionObject!=null) {%>
			<li><a href="logout">Logout</a></li>
		<%} else {%>
			<li><a href="login.jsp">Login</a></li>

		<%} %>
        </ul>
      </div>
    </div>
    <div id="site_content" align="center">
     <% 	Product product =(Product)request.getAttribute("product");%>
              <h1> Product Details For Selected Product ID</h1>
        <table border="1">
<thead>
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Product Price</td>
		<td>Product Quantity</td>
		<td>Product Category</td>
	</tr>
</thead>
	<tr>
		<td>${product.pId }</td>
		<td>${product.pName }</td>
		<td>${product.price }</td>
		<td>${product.quantity}</td>
		<td>${product.category}</td>
	</tr>
</table>
       
     	
      </div>
    </div>
    <div id="footer">
      <p><a href="index.jsp">Home</a> | <a href="contact.html">Contact Us</a></p>
      <p>Product Management CopyRights @ 2020<p>
    </div>
  </div>
</body>
</html>
