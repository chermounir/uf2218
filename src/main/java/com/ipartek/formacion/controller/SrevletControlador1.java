package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SrevletControlador1
 */
@WebServlet("/controlador1")
public class SrevletControlador1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		// obtener los datos del client a traves de la request

		// dar una respuesta atraves de la reponse
		
		out.print("<h1> Respuesta desde ServletControlador1</h1>");
		out.print("<p>User-agent: <b>" + request.getHeader("user-agent") + "</b></p>");

		// mirar version http y mas cosas

		// todos los parametros de la cabecera
		out.print("<h1> todos los parametros de la cabecera</h1>");
		out.print("<h2> Parametros</h2>");
		out.print("<ul>");
		Enumeration<String> eheader = request.getHeaderNames();
		while (eheader.hasMoreElements()) {
			String parameName = eheader.nextElement();
			String parameValue = request.getHeader(parameName);
			out.print("<li>" + parameName + " <b>" + parameValue + "</b></li>");

		}
		out.print("</ul>");
		// todos los parametros que envie el usuario

		out.print("<h1> Respuesta desde ServletControlador1</h1>");
		out.print("<h2> Parametros</h2>");
		out.print("<ul>");
		Enumeration<String> eParams = request.getParameterNames();
		while (eParams.hasMoreElements()) {
			String parameName = eParams.nextElement();
			String parameValue = request.getParameter(parameName);
			out.print("<li>" + parameName + " <b>" + parameValue + "</b></li>");

		}
		out.print("</ul>");

		out.flush();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// tenemos el get y el post que hacen lo mismo
		doGet(request, response);
	}

}
