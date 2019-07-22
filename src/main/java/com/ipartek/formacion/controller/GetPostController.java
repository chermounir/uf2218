package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPostController
 */
@WebServlet("/getpost")
public class GetPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String responseGet = request.getParameter("nombre");
		
		request.setAttribute("responseGet", responseGet);
		request.getRequestDispatcher("ejemplos/basico4.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String responsePost = request.getParameter("nombre");
		request.setAttribute("responsePost", responsePost);
		request.getRequestDispatcher("ejemplos/basico4.jsp").forward(request, response);
	}

}
