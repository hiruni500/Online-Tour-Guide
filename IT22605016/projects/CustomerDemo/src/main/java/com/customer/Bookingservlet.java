package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


 
@WebServlet("/Bookingservlet")
public class Bookingservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String NEname=request.getParameter("name");
		String NEemail=request.getParameter("email");
		
		try {
		List<customer> cusDetails =BookingDBUtil.validate(NEname, NEemail);
	  request.setAttribute("cusDetails", cusDetails);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	  RequestDispatcher dis=request.getRequestDispatcher("Bookingaccount.jsp");
	  dis.forward(request, response);
		
	}

}
