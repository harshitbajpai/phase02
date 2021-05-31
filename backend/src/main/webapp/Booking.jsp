<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>




<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>





<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "machine";
String userId = "root";
String password = "master";




try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<body background="https://image.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg">

<h2 align="center"><font><strong><h2>Available seats are </h2></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#B0E0E6">
<td><b>FLIGHT</b></td>
<td><b>SOURCE</b></td>
<td><b>DESTINATION</b></td>
<td><b>DATE</b></td>
<td><b>AVAILABLE SEATS</b></td>
</tr>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();



String sql ="SELECT * FROM aero WHERE flight1=";
sql+='"';
sql+=session.getAttribute("Machine");
sql+='"';

sql+="AND ";

sql+=" date1=";
sql+='"';
sql+=session.getAttribute("Date");
sql+='"';
sql+="AND ";
sql+=" source1=";
sql+='"';
sql+=session.getAttribute("Source");
sql+='"';

sql+="AND ";
sql+=" destination1=";
sql+='"';
sql+=session.getAttribute("Destination");
sql+='"';



resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<tr bgcolor="#87CEEB">

<td><%=resultSet.getString("flight1") %></td>
<td><%=resultSet.getString("source1") %></td>
<td><%=resultSet.getString("destination1") %></td>
<td><%=resultSet.getString("date1") %></td>
<td><%=resultSet.getString("seat1") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


<br><br>

<center>
<form action="bookticket.jsp">
<input type="submit" value="Book Ticket">
</form></center>

