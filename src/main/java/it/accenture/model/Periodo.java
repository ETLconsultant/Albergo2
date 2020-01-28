package it.accenture.model;

import java.time.LocalDate;
import java.time.Period;

public class Periodo {

	private LocalDate dataInizio;
	private LocalDate dataFine;
	private Period period= Period.between(dataInizio, dataFine);
	

	public Period getPeriod() {
		return period;
	}

	public void setPeriod(Period period) {
		this.period = period;
	}

	public LocalDate getDataInizio() {
		return dataInizio;
	}

	public void setDataInizio(LocalDate dataInizio) {
		this.dataInizio = dataInizio;
	}

	public LocalDate getDataFine() {
		return dataFine;
	}

	public void setDataFine(LocalDate dataFine) {
		this.dataFine = dataFine;
	}

	@Override
	public String toString() {
		return "Periodo [dataInizio=" + dataInizio + ", dataFine=" + dataFine + ", period=" + period + "]";
	}



}
