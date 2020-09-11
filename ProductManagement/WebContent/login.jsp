<!DOCTYPE HTML>
<html>

<head>
  <title>Product Management : Login Page</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <h1><a href="index.html">Product<span class="logo_colour">Management</span></a></h1>
          <h2>Single point for Everything </h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <li ><a href="index.html">Home</a></li>
          <li><a href="contact.html">Contact Us</a></li>
           <li class="selected"><a href="login.html">Login</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content" align="center">
     
       <%
request.getAttribute("message");
%>
<p><h1>Login</h1></p>
<form action="dologin" method="post">
	<table>
		<tr>
			<td>Username<td>
			<td><input type ="text" name=username></td>
		</tr>
		<tr>
			<td>Password<td>
			<td><input type ="password" name=password></td>
		</tr>
		<tr align="center">
			<td ><input type="submit" value="Login"></td>
		</tr>
	</table>
	<h3>${message }</h3>
</form>
      </div>
      <div id="content">
        
       
      </div>
    </div>
    <div id="footer">
      <p><a href="index.html">Home</a> | <a href="contact.html">Contact Us</a></p>
      <p>Product Management CopyRights @ 2020<p>
    </div>
</body>
</html>











