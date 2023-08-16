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


@WebServlet("/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname =request.getParameter("name");
		String uemail=request.getParameter("email");
		String usub=request.getParameter("sub");
		String uss=request.getParameter("ss");
		
		RequestDispatcher dispatcher= null;
		Connection con=null;
		
		if(uname==null || uname.equals(""))
		{
			request.setAttribute("status", "invalidName");
			dispatcher=request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}

		if(uemail==null || uemail.equals(""))
		{
			request.setAttribute("status", "invalidEmail");
			dispatcher=request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		if(uss==null || uss.equals(""))
		{
			request.setAttribute("status", "leftSpace");
			dispatcher=request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		if(usub==null || usub.equals(""))
		{
			request.setAttribute("status", "Entersubject");
			dispatcher=request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		try
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/klu?useSSL=false","root","admin"); 
			PreparedStatement pst=con.prepareStatement("insert into info(uname,uemail,usub,uss) values(?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, usub);
			pst.setString(4, uss);
			
			int rowCount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("contactus.jsp");
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
