package com.tech.blog.servlets;

import com.tech.blog.entities.*;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.dao.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		//doGet(request, response);
		//fetch data
		String check=request.getParameter("check_box");
		String name=request.getParameter("user_name");
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		String gender=request.getParameter("user_gender");
		String about=request.getParameter("user_about");
		
		
		if (check==null || name==null || email==null || password==null || gender==null) {
			out.println("fill all data");
		}
		else {
			
			
			
			//create user object and set all data to that object
			User user=new User(name,email,password,gender,about,null);
			
			out.println("registerServlet");
			
			//create user dao object
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user))
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			    dispatcher.forward(request, response);
			}
			else
			{
				HttpSession s=request.getSession();
				Message m=new Message("Logout Successfull", "success", "alert-success");
				s.setAttribute("msg", m);
				
				response.sendRedirect("Register_page.jsp");
			}
		}
		
		
	}

}
