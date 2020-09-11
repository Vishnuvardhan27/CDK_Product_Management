package com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAOImpl;
import com.pojo.Product;

/**
 * Servlet implementation class FindById
 */
@WebServlet("/findid")
public class FindById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ProductDAOImpl dao =new ProductDAOImpl();
		Product product = new Product();
		int id =Integer.parseInt(request.getParameter("pid"));
		
		product = dao.findById(id);
		
		request.setAttribute("product", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("singledisplay.jsp");
		dispatcher.forward(request, response);
	}


}
