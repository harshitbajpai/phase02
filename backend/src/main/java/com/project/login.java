package com.project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	

		
		String name=request.getParameter("name");
		String pass=request.getParameter("pass");
		
		if(name.equals("name")&&pass.equals("pass"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username",name);
			response.sendRedirect("home.jsp");
		}
		else
		{
			out.println("oops!Please write valid credentials!!!");
			response.sendRedirect("login.html");
		}
	}

}
	
