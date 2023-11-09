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
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		
		String user_email=request.getParameter("email");
		String user_password=request.getParameter("password");
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		User u=dao.getUserByEmailAndPassword(user_email, user_password);
		
		if (u==null) {
			Message msg=new Message("Invalid Details..Try Again", "error", "alert-danger");
			
			HttpSession s=request.getSession();
			s.setAttribute("msg", msg);
			
			response.sendRedirect("login.jsp");
		} else {
			HttpSession s=request.getSession();
			s.setAttribute("currentUser", u);
			response.sendRedirect("profile.jsp");
		}
		
	
			
	
		
	}

}
