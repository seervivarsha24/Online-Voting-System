<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet"type="text/css"href="Voting.css">
</head>
<%@ include file="NavBar.jsp"%>
<body>
<form style="margin-bottom:30px;" action="Contact" method="post">
	<div class="form-group" style="padding-left:70px;">
    	<label for="name" style="font-size:14px;"><b>Name :</b></label><br>
        <input style="font-size:16px;" type="text" name="name" id="name"placeholder="Name" required><br>
        
        <label for="number" style="font-size:14px;"><b>Phone Number :</b></label><br>
        <input style="font-size:16px;" type="number"name="number"  placeholder="Phone Number"><br>
        
        <label for="email" style="font-size:14px;"><b>Email :</b></label><br>
        <input style="font-size:16px;" type="email" name="email" placeholder="Email " required><br>
        
        <label for="comment" style="font-size:14px;"><b>Comments and Questions :</b></label><br>
        <textarea style="font-size:16px;" name="comment" placeholder="Comments" required></textarea><br>
    		<button type="submit" style="border-radius:5px;" class="buttons">Submit</button>
    </div>
</form>
</body>
</html>