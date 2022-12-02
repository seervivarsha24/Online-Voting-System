<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Online Voting System</title>
<link rel="stylesheet"type="text/css"href="Voting.css">
</head>
<%@ include file="NavBar.jsp"%>
<body>
<form action="VoterLogin" method="post">
    <div class="form-group">
    	<nav class="buttons"style="font-size:24px;">Login</nav>
    	<p style="font-size:18px;">Enter Your Register Voter Card Number</p>
    	<hr>
    	<div style="padding-left:100px;">
    	<label for="votetext" class="form-elements form-label" style="font-size:12px;padding-left:30px;">Voter Card Number</label><br>
        <input  type="text" name="voterNumber" class="form-elements form-input" id="votetext" placeholder="Voter Card Number " required>
    	</div>
    	<hr>
    	<button type="Submit" style="border-radius:5px;margin-left:100px; padding:0px 80px 0px 80px;" class="buttons">Login</button>
    </div>
    <a style="font-size:12px; padding-left:195px;" href="AdminLogin.jsp">Admin</a>
</form>
</body>


</html>