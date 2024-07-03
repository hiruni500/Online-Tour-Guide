package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingInsert
 */
@WebServlet("/BookingInsert")
public class BookingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String tourType=request.getParameter("type");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String date1=request.getParameter("checkin");
	String date2=request.getParameter("checkout");
	String adults=request.getParameter("name1");
	String children=request.getParameter("name2");
	String roomType=request.getParameter("roomtype");
	
	boolean isTrue;
	
	isTrue =BookingDBUtil.insertbooking(tourType,name,email,phone,date1,date2,adults,children,roomType);
	
	if(isTrue==true) {
		RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
		dis.forward(request, response);
	}else {
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request, response);
	}
	
	
	}

}
