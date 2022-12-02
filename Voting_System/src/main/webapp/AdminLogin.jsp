<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet"type="text/css"href="Voting.css">
</head>
<%@ include file="NavBar.jsp"%>
<body>
<form action="adminLogin" method="post">
    <div class="form-group" >
    	<nav style="font-size:24px ;padding-left:130px;">Admin Login</nav>
    	<hr>
    	<div style="padding-left:70px;">
	    	<label for="votes" class="form-elements form-label" style="font-size:12px;"><b>Name</b></label><br>
	        <input type="text" name="admin_name" class="form-elements form-input" id="votes" placeholder="Name" ><br>
	        
	        <label for="vote" class="form-elements form-label" style="font-size:12px;"><b>Password</b></label><br>
	        <input type="password" name="admin_pass" class="form-elements form-input" id="vote" placeholder="Password" >
    	</div>
    	<hr>
    	<button type="submit" style="border-radius:5px;margin-left:150px;" class="buttons">Login</button>
    </div>
   
</form>
</body>
</html>