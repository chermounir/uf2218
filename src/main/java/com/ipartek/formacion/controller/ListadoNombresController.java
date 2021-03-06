package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Nombres
 */
@WebServlet("/nombres")
public class ListadoNombresController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static ArrayList<String> lista;
	Alert mensaje = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ListadoNombresController() {
		super();
		lista = new ArrayList<String>();
		lista.add("Manolo");
		lista.add("Hermenegilda");
		lista.add("Ursiciano");
		lista.add("Agapito");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String buscar = request.getParameter("buscar");
		boolean bool = false;

		if (buscar != null && !buscar.trim().isEmpty()) {

			ArrayList<String> listaFiltrada = new ArrayList<String>();
			for (String nombre : lista) {
				if (nombre.toLowerCase().contains(buscar.toLowerCase())) {
					listaFiltrada.add(nombre);
					bool = true;

				}
			}
			if (bool) {
				request.setAttribute("mensaje", new Alert("success", "Nombre existe"));
			} else {
				request.setAttribute("mensaje", new Alert("warning", "Nombre No existe"));
			}
			request.setAttribute("nombres", listaFiltrada);

		} else {
			request.setAttribute("nombres", lista);

		}

		request.setAttribute("buscar", buscar);

		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombreNuevo = request.getParameter("nombre");

		String texto = "Nombre no valido";

		if (nombreNuevo != null) {

			nombreNuevo = nombreNuevo.trim();

			if ("".equalsIgnoreCase(nombreNuevo)) {
				mensaje = new Alert("warning", "Por favor Escribe un nombre valido");
			} else {
				lista.add(nombreNuevo);
				mensaje = new Alert("success", "Nombre creado con exito");

			}

		}

		request.setAttribute("mensaje", mensaje);
		request.setAttribute("nombres", lista);
		request.getRequestDispatcher("ejemplos/nombres.jsp").forward(request, response);
	}
}
