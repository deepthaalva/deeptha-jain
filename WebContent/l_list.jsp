<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Absence Reports</title>
<style>
body{
	background-image:url(ll.jpg);
	height: 100vh;
	background-size:cover;
	background-position:cover;	
}

table {
    border-collapse: collapse;
    width: 100%;
    opacity:0.8;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}

a {
        		    background-color: blue; /* Green */
          border: none;
          color: white;
          padding: 6px 22px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          -webkit-transition-duration: 0.4s; /* Safari */
          transition-duration: 0.4s;
          cursor: pointer;
      }

      a {
          background-color: orange; 
          color: black; 
          border: skyblue; 
               
      }


      a:hover {
          background-color:#FF6347;
          color: black;

</style>



</head>
<body>
<h1><center>Employee Abscence Details </center></h1>
<table style="background-color:rgba(100, 100, 100, 0.5);">
<tr bgcolor="orange">

<th>Employee ID</th>
<th>Employee Name</th>
<th>Leave Date</th>
<th>Purpose</th>
<th>Number of Days</th>



</tr>
<% 

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/D","root","hhrpkpmcc");
PreparedStatement ps=con.prepareStatement("select * from e_leave");
ResultSet rs=ps.executeQuery();
while(rs.next()) {
%>
<tr bgcolor="#FF6347">
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td ><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>



</tr>
<%} %>



</table><br/><br/>
<center><a href ='company_status.html'>Back</a></center>
</body>
</html>
