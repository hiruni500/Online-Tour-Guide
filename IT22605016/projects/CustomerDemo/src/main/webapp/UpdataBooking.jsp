<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <%
   String tour=request.getParameter("tour");
   String name=request.getParameter("name");
   String email=request.getParameter("email");
   String phone=request.getParameter("phone");
   String date1=request.getParameter("date1");
   String date2=request.getParameter("date2");
   String adults=request.getParameter("adults");
   String children=request.getParameter("children");
   String roomType=request.getParameter("roomT");
   
   %>
   <form action="#"  method="post">
   
   <h1><center> BOOK  TOUR</center></h1>
        Select the Tour
        <select name="type1" value="<%=tour %>">
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
        
        Name<input type="text"  name="name" value="<%=name%>"><br><br>
        Email<input type="email"   name="email"  value="<%=email%>"><br><br>
        Phone<input type="phone"   name="phone"  value="<%=phone%>"><br><br>
        Check-in Date<input type="date"   name="date1"  value="<%=date1%>"><br><br>
        Check-out Date<input type="date"   name="date2"  value="<%=date2%>"><br><br>
        Adults<input type="text"   name="adults"  value="<%=adults%>"><br><br>
        Children<input type="text"   name="children"  value="<%=children%>"><br><br>
        Room Type:
         <select id="room-type" name="roomtype" required  value="<%=roomType%>">
            <option value="">Select Room Type</option>
            <option value="single">Single Room</option>
            <option value="double">Double Room</option>
            <option value="suite">Suite</option>
        </select><br><br>
   
    <input type="submit"  name="submit"   value="UPDATE" >
   
   </form>


</body>
</html>