<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

 <body background="https://image.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg">
<%

if(session.getAttribute("username")==null)
{
	response.sendRedirect("login.html");
}

%>
<center><strong><h2>Welcome to Air Ticket booking </h2></strong></center>
<form action="flights"><center><b><h2>
  <label for="Source">Enter Source</label><br>
  <input type="text" id="Source" name="Source"placeholder="bangalore"><br>
  <label for="Destination">Enter Destination</label><br>
  <input type="text" id="Destination" name="Destination"placeholder="delhi"><br><br>
  <b>Date:<b> <br><input type = "date" name="Date"> <br><br>
  
  
  Please select your Flight:<br>
  <input type="radio" id="indigo" name="Machine" value="indigo">
  <label for="indigo">indigo</label>
  <input type="radio" id="vistaara" name="Machine" value="vistaara">
  <label for="vistaara">vistaara</label>
  <input type="radio" id="spicejet" name="Machine" value="spicejet">
  <label for="spicejet">spicejet</label><br>
  <input type="radio" id="goair" name="Machine" value="goair">
  <label for="goair">goair</label>
  <input type="radio" id="airindia" name="Machine" value="airindia">
  <label for="airindia">airindia</label>
  <input type="radio" id="airasia" name="Machine" value="airasia">
  <label for="airasia">airasia</label><br>
  <br>
  
  
  <label for="Passengers">Extra Seat:</label>
  <select name="Passengers" id="Passengers">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
  </select>
  <br><br>
  
  <button type="submit" name="button">Submit</button>
</form>
</b></h2>

</center>

</body>
</html>