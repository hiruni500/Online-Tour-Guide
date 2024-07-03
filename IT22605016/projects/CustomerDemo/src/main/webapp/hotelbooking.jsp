<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
  
  <div style="background-color: #DAF7A6;">
 
 
<form action="insert"    method="post">

<h1><center> BOOK  TOUR</center></h1>

<lable>Select the Tour</lable>
<select name="type">
   <option>Colombo Day Tour</option>
   <option>Kandy Day Tour</option>
   <option>Sigiriya Day Tour</option>
   <option>Galle Day Tour</option>
   <option>Sri Lanka Tour No.01--05 Nights 06 Days</option>
   <option>Sri Lanka Tour No.02--07 Nights 08 Days</option>
   <option>Sri Lanka Tour No.03--07 Nights 08 Days</option>
   <option>Sri Lanka Tour No.04--10 Nights 11 Days</option>
   <option>Honeymoon Sri Lanka--13 Nights 14 Days</option>
   <option>Sri Lanka Island Tour--15 Nights 16 Days</option>
  

</select><br><br>





<label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="phone" id="pho" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="Format: 123-456-7890" required><br><br>

        <label for="checkin">Check-in Date:</label>
        <input type="date" id="checkin" name="checkin" min="2023-01-01" required><br><br>

        <label for="checkout">Check-out Date:</label>
        <input type="date" id="checkout" name="checkout" min="2023-01-01" required><br><br>
        
        <lable>Adults</lable>
        <input type="text"  name="name1"><br><br>
        
        <lable>Children</lable>
        <input type="text"  name="name2"><br><br>
        

        <label for="room-type">Room Type:</label>
        <select id="room-type" name="roomtype" required>
            <option value="">Select Room Type</option>
            <option value="single">Single Room</option>
            <option value="double">Double Room</option>
            <option value="suite">Suite</option>
        </select><br><br>


      <input type="submit"  name="submit"   value="Book  Now" >
</form>



</div>

</body>
</html>