<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin!</title>
<link rel="stylesheet"type="text/css"href="Voting.css">
<%
   
    String a[] = new String[100];
 
    Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingDb","root","dinuvars31");
	
	PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
	ResultSet rs=preparedStatement.executeQuery("select partie,count(partie) as c from vote group by partie");
	
    int i=0;
    while(rs.next()){
        a[i] = Integer.toString(Integer.parseInt( rs.getString("c"))-1);
        i++;
    }
    %>
</head>
<%@ include file="Vote.jsp"%>
<body>
<table>
	<tr>
		<th>
			Parties
		</th>
		<th>
			Names
		</th>
		<th>
			Votes
		</th>
	</tr>
	<tr>
		<td>
			<img alt="Aam Aadmi Party" style="height:100px;width:100px;" src="Image/Aap.jpg">
		</td>
		<td>
			Aam Aadmi Party 
		</td>
		<td>
			<%=a[0]%>
		</td>
	</tr>
	<tr>
		<td>
			<img alt="BSP" style="height:100px;width:100px;" src="Image/bsp.jpg">
		</td>
		<td>
			BSP
		</td>
		<td>
			<%=a[1]%>
		</td>
	</tr>
	<tr>
		<td>
			<img alt="BJP" style="height:100px;width:100px;" src="Image/bjp.jpg">
		</td>
		<td>
			BJP
		</td>
		<td>
			<%=a[2]%>
		</td>
	</tr>
	<tr>
		<td>
			<img alt="Congress" style="height:100px;width:100px;" src="Image/congress.png">
		</td>
		<td>
			Congress
		</td>
		<td>
			<%=a[3]%>
		</td>
	</tr>
	<tr>
		<td>
			<img alt="CPI" style="height:100px;width:100px;" src="Image/CPI-banner.jpeg">
		</td>
		<td>
			CPI
		</td>
		<td>
			<%=a[4]%>
		</td>
	</tr>
</table>
</body>
</html>