
<%@ page import="java.util.*,java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body style="text-align:center;background-color:FF8033;font-size:20px;">


	<form style="text-align:center" method="post" action="Accept_or_RejectServlet">
	<table border="5S">
		<thead>
		<h2 style='text-align:center;background-color:gray;'>ACCEPT OR REJECT THE REQUEST</h2>
		<br>
		<tr>
		
		<th>ID</th>
		<th>DATE</th>
		<th>START TIME</th>
		<th>END TIME</th>
		<th>USER</th>
		<th>MR.NO</th>
		<th>RESOURCE</th>
		<th>STATUS</th>
		</tr>
		</thead>
		
		<%
		ResultSet rs=(ResultSet)request.getAttribute("rs");
		%>
		<%
		while(rs.next()){
		out.println("<tr><td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getString(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5)+"</td>"+"<td>"+rs.getInt(6)+"</td>"+"<td>"+rs.getString(7)+"</td>"+"<td>"+rs.getString(8)+"</td>"+"</tr>");
		}
		%>

</table>
	<br>
	<br>
	</form>
	
	<form style='text-align:center' method="post" action="Accepted_or_RejectedServlet">
Enter the ID:
<input type="text" name="id"><br>
<input type="submit" value="ACCEPT" name="acceptreject"><br>
<input type="submit" value="REJECT" name="acceptreject"><br>

</form>
	</body>
	</html>