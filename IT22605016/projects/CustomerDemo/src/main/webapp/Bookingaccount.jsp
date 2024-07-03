<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  <table>
  <c:forEach var="cus"  items="${cusDetails}">
  
  <c:set var="tour"   value="${cus.tour}"/>
  <c:set var="name"   value="${cus.name}"/>
  <c:set var="email"   value="${cus.email}"/>
  <c:set var="phone"   value="${cus.phone}"/>
  <c:set var="date1"   value="${cus.date1}"/>
  <c:set var="date2"   value="${cus.date2}"/>
  <c:set var="adults"   value="${cus.adults}"/>
  <c:set var="children"   value="${cus.children}"/>
  <c:set var="roomT"   value="${cus.roomT}"/>
  
  <tr>
    <td>Select the Tour</td>
    <td>${cus.tour}</td>
  </tr>

  <tr>
    <td>Name</td>
    <td>${cus.name}</td>
  </tr>

  <tr>
    <td>Email</td>
    <td>${cus.email}</td>
  </tr>

  <tr>
    <td>Phone</td>
    <td>${cus.phone}</td>
  </tr> 

   <tr>
    <td>Check-in Date</td>
    <td>${cus.date1}</td>
  </tr>

  <tr>
    <td>Check-out Date</td>
    <td>${cus.date2}</td>
  </tr>

  <tr>
    <td>Adults</td>
    <td>${cus.adults}</td>
  </tr>

  <tr>
    <td>Children</td>
    <td>${cus.children}</td>
  </tr>

  <tr>
    <td>Room Type</td>
    <td>${cus.roomT}</td>
  </tr>
  
  

  </c:forEach>
  </table>
  
  
  <c:url value="UpdataBooking.jsp" var="bookingUpdate"  >
   <c:param  name="tour" value="${tour}"/>
   <c:param  name="name" value="${name}"/>
   <c:param  name="email" value="${email}"/>
   <c:param  name="phone" value="${phone}"/>
   <c:param  name="date1" value="${date1}"/>
   <c:param  name="date2" value="${date2}"/>
   <c:param  name="adults" value="${adults}"/>
   <c:param  name="childen" value="${children}"/>
   <c:param  name="roomT" value="${roomT}"/>
  </c:url> 
  
  <a href="${bookingUpdate}">
  <input  type="button"  name="update"  value="UPDATE">
  </a>
  
</body>
</html>