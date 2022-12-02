<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"type="text/css"href="Voting.css">
<title>Welcome User</title>
</head>
<%@ include file="NavBar.jsp"%>
<body>
<form style="padding-left:80px;" action="Vote" method="post">
	<label for="voteNo" style="font-size:16px;" class="form-elements form-label"><b>Enter your Voter Card Number:</b></label><br>
	<input id="voteNo" name="voterNumber" class="form-elements form-input" type="text" placeholder="Voter Number"/><br>
	
	<label for="vote" style="font-size:16px;"><b>Select Party : </b></label><br>
	<select id="vote" name="partie" style="margin-bottom:30px;">
		<option value="Aam Aadmi Party">Aam Aadmi Party</option>
		<option value="BSP">BSP</option>
		<option value="BJP">BJP</option>
		<option value="Congress">Congress</option>
		<option value="CPI">CPI</option>
	</select><br>
	
	<button type="Submit" style="border-radius:5px; padding:0px 80px 0px 80px;" class="buttons">Submit</button>
</form>
</body>
</html>