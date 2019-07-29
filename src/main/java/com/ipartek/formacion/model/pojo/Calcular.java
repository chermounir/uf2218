package com.ipartek.formacion.model.pojo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Calcular {

	@NotNull
	@Size(min=1,max=9)
	private String num1;
	
	@NotNull
	@Size(min=1,max=9)
	private String num2;
	
	
	private String resultado;


	public String getNum1() {
		return num1;
	}


	public void setNum1(String num1) {
		this.num1 = num1;
	}


	public String getNum2() {
		return num2;
	}


	public void setNum2(String num2) {
		this.num2 = num2;
	}


	public String getResultado() {
		return resultado;
	}


	public void setResultado(String resultado) {
		this.resultado = resultado;
	}


	public Calcular() {
		super();
		// TODO Auto-generated constructor stub
	}




	@Override
	public String toString() {
		return "Calcular [num1=" + num1 + ", num2=" + num2 + ", resultado=" + resultado + "]";
	}
	
	
	
	
	
	
	
	
	
	
}