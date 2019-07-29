package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;

import com.ipartek.formacion.model.pojo.Calcular;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/calculadora")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static final String[][] OPERACIONES= {
			{"1","sumar"},{"2","restar"},{"3","multiplicar"},{"4","dividir"}
	};
	public static final String OP_SUMAR = "1";
	public static final String OP_RESTAR = "2";
	public static final String OP_MULTIPLICAR = "3";
	public static final String OP_DIVIDIR = "4";
	public static final String VIEW_CALCULADORA = "ejemplos/calculadora.jsp";

	private Validator validator;

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		validator = Validation.buildDefaultValidatorFactory().getValidator();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String num1 = request.getParameter("numero1");
		String num2 = request.getParameter("numero2");
		String op = request.getParameter("op");
		Alert mensaje = null;
		Calcular calcular = new Calcular();
		
		calcular.setNum1(num1);
		calcular.setNum2(num2);
		if (!num1.matches("[0-9]+([,|.][0-9]+)*") || !num2.matches("[0-9]+([,|.][0-9]+)*")) {
			mensaje = new Alert("danger", "numero no valido");
		} else {

			num1 = num1.replace(',', '.');
			num2 = num2.replace(',', '.');

			Set<ConstraintViolation<Calcular>> violationes = validator.validate(calcular);
			if (violationes.isEmpty()) {

				double resl = 0;
				switch (op) {
				case OP_SUMAR:
					resl = Double.parseDouble(num1) + Double.parseDouble(num2);

					break;
				case OP_RESTAR:
					resl = Double.parseDouble(num1) - Double.parseDouble(num2);
					break;
				case OP_MULTIPLICAR:
					resl = Double.parseDouble(num1) * Double.parseDouble(num2);
					break;
				case OP_DIVIDIR:
					if ("0".equals(num2)) {
						mensaje = new Alert("warning", "no se puede dividir por cero");
					}else {
						
						resl = Double.parseDouble(num1) / Double.parseDouble(num2);
					}
					
					break;
				default:
				mensaje = new Alert("warning", "porfavor selecciona una opcion");
				break;

				}
				calcular.setResultado("" + resl);
			} else {
				String menssage = "";
				for (ConstraintViolation<Calcular> violation : violationes) {

					menssage += violation.getPropertyPath() + ": " + violation.getMessage() + "<br>";
				}
				mensaje = new Alert("danger", menssage);
			}
		}
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("result", calcular);
		request.setAttribute("op", op);
		request.getRequestDispatcher(VIEW_CALCULADORA).forward(request, response);

	}

}
