package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDAOImpl;
import com.pojo.Product;

/**
 * Servlet implementation class AddProductServlet
 */
@WebServlet("/Add")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int pId,quantity;
		String pName,category;
		double price;
		
		PrintWriter writer =response.getWriter();
		
		pId = Integer.parseInt(request.getParameter("id"));
		quantity = Integer.parseInt(request.getParameter("quantity"));
		pName = request.getParameter("name");
		category = request.getParameter("category");
		price = Double.parseDouble(request.getParameter("price"));
		
		Product product = new Product(pId, pName, price, quantity, category);
		ProductDAOImpl dao = new ProductDAOImpl();
		int added = dao.addProduct(product);
		
		 if(added > 0) {
	          
	        	request.setAttribute("product", product);
	    		RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
	    		dispatcher.forward(request, response);
	    		
	        }else
	        {
	        	request.setAttribute("message", "CAN'T Add The Product Please try again");
	        	RequestDispatcher dispatcher = request.getRequestDispatcher("addproduct.jsp");
	        	dispatcher.forward(request, response);
	        }
		
	}

}
