package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.ProductDAOImpl;
import com.pojo.Product;

/**
 * Servlet implementation class FindProductByCategoryServlet
 */
@WebServlet("/findbycategory")
public class FindProductByCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindProductByCategoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String category = request.getParameter("category");
		ProductDAOImpl dao = new ProductDAOImpl();
		List <Product> products=dao.findAllByCategory(category);
		
		request.setAttribute("product", products);
		RequestDispatcher dispatcher = request.getRequestDispatcher("displaycategory.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
