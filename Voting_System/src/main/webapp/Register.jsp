<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Registration</title>
<link rel="stylesheet"type="text/css"href="Voting.css">
</head>
<%@ include file="NavBar.jsp"%>
<body>
<form style="margin-top:50px;" action="Register" method="post">
	<div class="form-group" style="padding-left:70px;">
    	<label for="name" style="font-size:14px;"><b>First Name :</b></label><br>
        <input style="font-size:15px;" type="text" name="name" id="name"placeholder="First Name" required><br>
        
        <label for="Name" style="font-size:14px;"><b>Last Name :</b></label><br>
        <input style="font-size:15px;" type="text" name="lastname" id="Name"placeholder="Last Name"><br>
        
        <label for="votetext" class="form-elements form-label" style="font-size:14px;"><b>Voter Card Number</b></label><br>
        <input  type="text" style="font-size:15px;" name="voternumber" class="form-elements form-input" id="votetext" placeholder="Voter Card Number " required><br>
        
        <label for="address" style="font-size:14px;"><b>Address :</b></label><br>
        <input style="font-size:15px;" type="text" name="address" id="address"placeholder="Native Address" required><br>
        
        <label for="dob" style="font-size:14px;"><b>Date of Birth :</b></label><br>
        <input style="font-size:15px;" type="date" name="dob" id="dob"placeholder="First Name" required><br>
        
        <label for="number" style="font-size:14px;"><b>Phone Number :</b></label><br>
        <input style="font-size:15px;" type="number"id="number" name="number"  placeholder="Phone Number"><br>
        
        <label for="email" style="font-size:14px;"><b>Email :</b></label><br>
        <input style="font-size:15px;" type="email" id="email" name="email" placeholder="Email " required><br><br>
    	
    	<button type="submit" style="border-radius:5px;padding-left:90px;padding-right:90px;" class="buttons">Register</button>
    </div>
</form>
</body>
</html>