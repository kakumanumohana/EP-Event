package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EventRegister
 */
@WebServlet("/event")
public class EventRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String fname=request.getParameter("fullname");
	String uname =request.getParameter("name");
	String uemail=request.getParameter("email");
	String umobile =request.getParameter("contact");
	String evname =request.getParameter("ename");
	String upwd=request.getParameter("pass");
	
	RequestDispatcher dispatcher= null;
	Connection con=null;
	
	if(fname==null || fname.equals(""))
	{
		request.setAttribute("status", "invalidName");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}
	if(uname==null || uname.equals(""))
	{
		request.setAttribute("status", "invalidUserName");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}
	if(evname==null || evname.equals(""))
	{
		request.setAttribute("status", "invalidEventName");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}

	if(uemail==null || uemail.equals(""))
	{
		request.setAttribute("status", "invalidEmail");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}
	if(umobile==null || umobile.equals(""))
	{
		request.setAttribute("status", "invalidMobileNumber");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}
	if(upwd==null || upwd.equals(""))
	{
		request.setAttribute("status", "invalidPassword");
		dispatcher=request.getRequestDispatcher("eventregister.jsp");
		dispatcher.forward(request, response);
	}
	try
	{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(  
				"jdbc:mysql://localhost:3306/klu?useSSL=false","root","admin"); 
		PreparedStatement pst=con.prepareStatement("insert into events(fname,uname,uemail,umobile,evname,upwd) values(?,?,?,?,?,?)");
		pst.setString(1, fname);
		pst.setString(2, uname);
		pst.setString(3, uemail);
		pst.setString(4, umobile);
		pst.setString(5, evname);
		pst.setString(6, upwd);
		
		int rowCount=pst.executeUpdate();
		dispatcher=request.getRequestDispatcher("trial.jsp");
		if(rowCount >0)
		{
			request.setAttribute("status","success");
		}
		else
		{
			request.setAttribute("status","failed");
		}

		dispatcher.forward(request, response);
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	finally {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	}

}
