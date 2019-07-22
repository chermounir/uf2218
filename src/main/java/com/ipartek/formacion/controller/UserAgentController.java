package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserAgentController
 */
@WebServlet("/useragent")
public class UserAgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserAgentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userAgent = request.getHeader("user-agent");
		userAgent = userAgent.toLowerCase();
		String navigador = null;
		
		if (userAgent.contains("firefox")) {
			navigador = "Firefox";
		} else if (userAgent.contains("opr")) {
			navigador = "Opera";			
		} else if (userAgent.contains("chrome")) {			
			navigador = "Chrome";
		}else if (userAgent.contains("trident")) {			
			navigador = "Internet Explorer";
		}else {
			navigador = "Otro";
		}

		if (userAgent.contains("mobile")) {
			request.setAttribute("movil", true);
		} else {			
			request.setAttribute("movil", false);
		}
		
		request.setAttribute("navigador", navigador);
		request.getRequestDispatcher("ejemplos/basico2.jsp").forward(request, response);

	}

}
