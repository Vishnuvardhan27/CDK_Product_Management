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
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDAOImpl dao =new ProductDAOImpl();
		Product product = new Product();
		int id =Integer.parseInt(request.getParameter("pid"));
		double price =Double.parseDouble(request.getParameter("price"));
		dao.updateProduct(id,price);
		
		request.setAttribute("product", product);
		RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
		dispatcher.forward(request, response);
		
		

		
	}

}
