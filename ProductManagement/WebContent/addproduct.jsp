<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>

<head>
  <title>Product Management : Login</title>
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
		request.getAttribute("message");
		%>
 
		<br><br>
		<h3>Enter Product Details</h3>
		<form action="Add" method="get">
		<table>
		<tr><td>Product Id </td><td> <input type="text" name="id"></td></tr> 
		<tr><td>Product Name  </td><td><input type="text" name="name"></td></tr> 
		<tr><td>Product Price  </td><td><input type="text" name="price"></td></tr> 
		<tr><td>Product Quantity </td><td> <input type="text" name="quantity"></td></tr> 
		<tr><td>Product Category  </td><td><select name="category">
												<option value="Mobile" selected>Mobile</option>
												<option value="TV">TV</option>
												<option value="Tablet">Tablet</option>
												</td></tr> 
		<tr><td><input type="submit" value="Submit Details"></td></tr> 
		</table>
		</form>  
		<b>?${message }</b>
		
        
      </div>
    </div>
    <div id="footer">
      <p><a href="index.jsp">Home</a> | <a href="contact.html">Contact Us</a></p>
      <p>Product Management CopyRights @ 2020<p>
    </div>
  </div>
</body>
</html>








































