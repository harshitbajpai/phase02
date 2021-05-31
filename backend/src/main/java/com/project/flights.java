package com.project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/flights")
public class flights extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Source=request.getParameter("Source");
		String Destination=request.getParameter("Destination");
		String Date=request.getParameter("Date");
		String Gender=request.getParameter("Gender");
		String Passengers=request.getParameter("Passengers");
		String Age=request.getParameter("Age");
		String Machine=request.getParameter("Machine");
		
		HttpSession session=request.getSession();
		session.setAttribute("Machine",Machine);
		
		session.setAttribute("Source",Source);
		
		session.setAttribute("Destination",Destination);
		
		session.setAttribute("Date",Date);
		
		
		response.sendRedirect("Booking.jsp");
		
	}
	

}
