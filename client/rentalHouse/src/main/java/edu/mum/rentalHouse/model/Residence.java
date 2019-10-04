package edu.mum.rentalHouse.model;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class Residence {

	private Long id;
	
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private LocalDate builtDate;
	
	private int squareFt;

	private Address address;

	
	
	public Residence() {
	
	}
	
	public Residence(LocalDate builtDate, int squareFt) {
		this.builtDate = builtDate;
		this.squareFt = squareFt;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LocalDate getBuiltDate() {
		return builtDate;
	}

	public void setBuiltDate(LocalDate builtDate) {
		this.builtDate = builtDate;
	}

	public int getSquareFt() {
		return squareFt;
	}

	public void setSquareFt(int squareFt) {
		this.squareFt = squareFt;
	}


	
}
