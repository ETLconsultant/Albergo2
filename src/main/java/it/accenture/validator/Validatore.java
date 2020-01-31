package it.accenture.validator;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.ResourceBundle;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import it.accenture.model.Formula;
import it.accenture.service.Service;


public class Validatore{

	private static ResourceBundle bundle = ResourceBundle.getBundle("info");
	
	/*
	 * regole di validazione per la registrazione dell'utente
	 */
	public static List<ErroreValidazione> validazioneUtente(HttpServletRequest request){
		List<ErroreValidazione> lista = new ArrayList<>();
		String regexP="(?=.*\\d)(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[.!@#$%^&*]).{8,}";
		String regexN="^\\b(?!.*?\\s{2})[A-Za-z ]{1,50}\\b$";
		
		String username = request.getParameter("username");
		if(username == null || username.length()==0)
			lista.add(new ErroreValidazione("username", "username " + bundle.getString("error.required")));
		else if(username.length()<4)
			lista.add(new ErroreValidazione("username", "username " + bundle.getString("error.minlength" + " 4")));

		String password = request.getParameter("password");
		if(password == null || password.length()==0)
			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.required")));
		else if(password.length()<8)
				//il controllo viene fatto solo se la password è stata inserita
				lista.add(new ErroreValidazione("password", bundle.getString("error.minlength") + " 8"));
		else if(!Pattern.matches(regexP, password))
			lista.add(new ErroreValidazione("password", bundle.getString("error.password")));
		
		String nome = request.getParameter("nome");
		if(nome == null || nome.length()==0)
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.required")));
		else if (!Pattern.matches(regexN, nome))
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.type.string")));
			
			
		//TODO: continuare con gli eventuali controlli di validità che si ritiene necessari
		
		return lista;
	}

	//TODO: aggiungere tutti i controlli per le diverse form del sito
	public static List<ErroreValidazione> validazionePrenotazione(HttpServletRequest request){
		List<ErroreValidazione> lista = new ArrayList<>();
		
		LocalDate dataInizio=LocalDate.parse(request.getParameter("dataInizio"));
		if(dataInizio.isBefore(LocalDate.now())) 
			lista.add(new ErroreValidazione("dataInizio", bundle.getString("error.data.oggi")));

		LocalDate dataFine=LocalDate.parse(request.getParameter("dataFine"));
		if(dataFine.isBefore(dataInizio))
			lista.add(new ErroreValidazione("dataInizio", bundle.getString("error.data.fine")));
		
		return lista;
	}
}

