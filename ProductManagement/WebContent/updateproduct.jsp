<%@page import="java.util.List"%>
<%@page import="com.pojo.Product"%>
<%@page import="com.dao.ProductDAOImpl"%>
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
     
        <%
	ProductDAOImpl dao =new ProductDAOImpl();
	List <Product> products =dao.findAll();
%>
Please Provide The Information of a PRODUCT TO be UPDATED<br>
	<br><br>
	<form action="update">
	Product ID :
	<select name="pid">
	<%
		for(Product p: products)
		{
	%>
	<option><%= p.getpId() %></option>
	<%
	} 
	%>
	</select><br><br>
	Price : <input type="text" name="price">
	<input type="submit" Value="Update Product">
</form>
	
      <div id="content">
        
       
      </div>
    </div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="contact.html">Contact Us</a></p>
      <p>Product Management CopyRights @ 2020<p>
    </div>
  </div>
</body>
</html>






