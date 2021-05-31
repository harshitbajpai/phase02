<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><center><b>
<body background="https://image.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg">
<label for="First Name">First name</label><br> 
  <input type="text" id="First Name" name="First Name"placeholder="First Name"><br>
  
  
  <label for="Last Name">Last name</label><br> 
  <input type="text" id="Last Name" name="Last Name"placeholder="Last Name"><br>
  <label for="Age">Age</label><br> 
  <input type="text" id="Age" name="Age"placeholder="Age"><br>
  <label for="Email">Email</label><br> 
  <input type="text" id="Email" name="Email"placeholder="Email"><br><br>
Please select your gender:<br>
  <input type="radio" id="male" name="Gender" value="male">
  <label for="male">Male</label>
  <input type="radio" id="female" name="Gender" value="female">
  <label for="female">Female</label>
  <input type="radio" id="other" name="Gender" value="other">
  <label for="other">Other</label><br><br>
  <label for="Adhaar">Adhaar</label><br> 
  <input type="text" id="Adhaar" name="Adhaar"placeholder="Adhaar"><br>
  
  <label for="Card Number">Card Number</label><br> 
  <input type="text" id="Card Number" name="Card Number"placeholder="Card Number"><br>
  <label for="CVV">CVV</label><br> 
  <input type="text" id="CVV" name="CVV"placeholder="CVV"><br>
  <label for="expiry">expiry</label><br> 
  <input type="text" id="expiry" name="expiry"placeholder="expiry">
  
  
  
<form action="result.jsp">
<input type="submit" value="Pay">
</form>


</center></b>
</body>
</html>