package com.ipartek.formacion.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.model.dao.VideoDAO;
import com.ipartek.formacion.model.pojo.Video;
import com.mysql.jdbc.MysqlDataTruncation;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;

/**
 * Servlet implementation class VideoController
 */
@WebServlet("/videos")
public class VideoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static final String VIEW_INDEX = "youtube/index.jsp";
	public static final String VIEW_FORM = "youtube/formulario.jsp";
	public static String view = VIEW_INDEX;

	public static final String OP_LISTAR = "1";
	public static final String OP_NUEVO = "2";
	public static final String OP_DETALLE = "3";
	public static final String OP_ELIMINAR = "6";
	public static final String OP_GUARDAR = "7";

	private static VideoDAO videoDAO;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (MysqlDataTruncation | MySQLIntegrityConstraintViolationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (MysqlDataTruncation | MySQLIntegrityConstraintViolationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, MysqlDataTruncation, MySQLIntegrityConstraintViolationException {

		String op = request.getParameter("op");
		if (op == null) {
			op = OP_LISTAR;
		}
		switch (op) {
		case OP_LISTAR:
			listar(request, response);
			break;
		case OP_NUEVO:
			nuevo(request, response);
			break;
		case OP_DETALLE:
			detalle(request, response);
			break;
		case OP_ELIMINAR:
			eliminar(request, response);
			break;
		case OP_GUARDAR:
			guardar(request, response);
			break;

		}

	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VideoDAO videoDAO = VideoDAO.getInstance();
		request.setAttribute("videos", videoDAO.getAll());
		request.getRequestDispatcher(VIEW_INDEX).forward(request, response);

	}

	private void nuevo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("video", new Video());
		view = VIEW_FORM;
		request.getRequestDispatcher(view).forward(request, response);

	}

	private void detalle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		VideoDAO videoDAODetalle = VideoDAO.getInstance();
		request.setAttribute("video", videoDAODetalle.getById(id));
		view = VIEW_FORM;
		request.getRequestDispatcher(view).forward(request, response);

	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Alert mensaje = new Alert("warning", "no se ha podido eliminar el registro");
		int id = Integer.parseInt(request.getParameter("id"));

		VideoDAO videoDAOEliminar = VideoDAO.getInstance();
		if (videoDAOEliminar.delete(id)) {
			mensaje = new Alert("success", "registro eliminado con exito");
		}
		view = VIEW_FORM;
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("video", null);
		request.getRequestDispatcher(view).forward(request, response);
	}

	private void guardar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, MysqlDataTruncation, MySQLIntegrityConstraintViolationException {
		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		String codigo = request.getParameter("codigo");

		Alert mensaje = null;
		Video video = new Video();

		video.setId(id);
		video.setNombre(nombre);
		video.setCodigo(codigo);
		video.setCodigo(codigo);

		VideoDAO videoDAOModificar = VideoDAO.getInstance();
		if (id == -1) {
			if (videoDAOModificar.crear(video)) {
				mensaje = new Alert("success", "registro insertado con exito");
			}else {
				mensaje = new Alert("warning", "no se ha podido insertar el registro");
			}

		} else {
			if (videoDAOModificar.modificar(video)) {
				mensaje = new Alert("success", "registro modificado con exito");
			}else {
				mensaje = new Alert("warning", "no se ha podido modificar el registro");
			}

		}

		view = VIEW_FORM;
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("video", video);
		request.getRequestDispatcher(view).forward(request, response);

	}

}