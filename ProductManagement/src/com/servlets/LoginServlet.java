package com.servlets;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/dologin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String username,password;
		HttpSession session = request.getSession();
		username= request.getParameter("username");
		password=request.getParameter("password");
		
		if (username.equals("admin") && password.equals("admin"))
		{
			//request.setAttribute("product", product);
			session.setAttribute("username", username);
    		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
    		dispatcher.forward(request, response);
		}
		else
		{
			request.setAttribute("message", "Invalid Credentials, Please Enter Correct Username and Password");
        	RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        	dispatcher.forward(request, response);
		}
	}
}