package it.accenture.validator;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.ResourceBundle;

import javax.servlet.http.HttpServletRequest;


public class Validatore{

	private static ResourceBundle bundle = ResourceBundle.getBundle("info");
	
	/*
	 * regole di validazione per la registrazione dell'utente
	 */
	public static List<ErroreValidazione> validazioneUtente(HttpServletRequest request){
		List<ErroreValidazione> lista = new ArrayList<>();
		
		String username = request.getParameter("username");
		if(username == null || username.length()==0) {
			System.out.println("username == null || username.length()==0");
			lista.add(new ErroreValidazione("username", "username " + bundle.getString("error.required")));
		}
		else if(username.length() > 20) {
			lista.add(new ErroreValidazione("username", "username " + bundle.getString("error.maxlength") + " 20"));
			System.out.println("username.length() < 20");

		}
		
		String password = request.getParameter("password");
		String passwordExpression = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[!@#$%*^&+=])(?=\\S+$).{8,20}$";
		String minuscola = "^(?=.*[a-z]).{8,20}$";
		String maiuscola = "^(?=.*[A-Z]).{8,20}$";
		String numero = "^(?=.*[0-9]).{8,20}$";
		String speciale = "^(?=.*[!@#$%*^&+=]).{8,20}$";
		String spazio = "^(?=\\S+$).{8,20}$";

		boolean isPasswordValid = password.matches(passwordExpression);
		
		if(password == null || password.length()==0) {
			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.required")));
			System.out.println("password == null || password.length()==0");
		}
		else if(password.length()<8) {
			//il controllo viene fatto solo se la password è stata inserita
			lista.add(new ErroreValidazione("password", bundle.getString("error.minlength") + " 8"));
			System.out.println("password.length()<8");
		}
		else if(password.length()>20) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.maxlength") + " 20"));
			System.out.println("password.length()>20");
		}
		else if(!password.matches(minuscola)) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.atleastonesmall")));
			System.out.println("!password.matches(minuscola)");
		}
		else if(!password.matches(maiuscola)) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.atleastonebig")));
			System.out.println("!password.matches(maiuscola)");
		}
		else if(!password.matches(numero)) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.atleastonenumber")));
			System.out.println("!password.matches(numero)");
		}
		else if(!password.matches(speciale)) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.specialcharacter")));
			System.out.println("!password.matches(speciale)");
		}
		else if(!password.matches(spazio)) {
			lista.add(new ErroreValidazione("password", bundle.getString("error.nospaces")));
			System.out.println("!password.matches(spazio)");
		}
		
//		else if(!isPasswordValid) {
//			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.password")));
//			System.out.println("!password.matches(isPasswordValid)");
//		}

		String nome = request.getParameter("nome");
		 
		if(nome == null || nome.length() == 0)
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.required")));
		else if(nome.length() > 20)
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.maxlength") + " 20"));			
//		else if(nome.matches("^[a-zA-Z]*$")) {
//			System.out.println("^[a-zA-Z]*$");
//			lista.add(new ErroreValidazione("nome", "Il nome " + bundle.getString("error.nonumeri")));
//			
//		}
		
		String cognome = request.getParameter("cognome");
		if(cognome == null || cognome.length() == 0)
			lista.add(new ErroreValidazione("cognome", "cognome " + bundle.getString("error.required")));
		else if(cognome.length() > 20)
			lista.add(new ErroreValidazione("cognome", "cognome" + bundle.getString("error.maxlength") + " 20"));			
//		else if(cognome.matches("^[a-zA-Z]*$")) {
//			System.out.println("^[a-zA-Z]*$");
//			lista.add(new ErroreValidazione("cognome", "Il cognome " + bundle.getString("error.nonumeri")));
//			
//		}
		
		//TODO: continuare con gli eventuali controlli di validità che si ritiene necessari
		
		return lista;
	}
	
	public static List<ErroreValidazione> validazionePrenota(HttpServletRequest request){
		List<ErroreValidazione> lista = new ArrayList<>();
		
		LocalDate dataInizio = LocalDate.parse(request.getParameter("dataInizio"));
		LocalDate dataFine = LocalDate.parse(request.getParameter("dataFine"));
		LocalDate today = LocalDate.now();
		
		System.out.println(dataInizio);
		System.out.println(dataFine);
		System.out.println(today);
		
		if(dataInizio.isBefore(today)) {
			System.out.println("La data di check in non puo' essere prima di oggi");
			lista.add(new ErroreValidazione("dataInizio", "La data di check in " + bundle.getString("error.data.checkinoggi")));
		}
		
		if(dataFine.isBefore(today)) {
			System.out.println("La data di check out non puo' essere prima di oggi");
			lista.add(new ErroreValidazione("dataFine", "La data di check out " + bundle.getString("error.data.checkoutoggi")));
		}
		
		if(dataInizio.isAfter(dataFine)) {
			System.out.println("La data di check in non puo' essere dopo la data di check out");
			lista.add(new ErroreValidazione("dataInizio", "La data di check in " + bundle.getString("error.data.checkincheckout")));
		}
		
		
		return lista;
	}

	//TODO: aggiungere tutti i controlli per le diverse form del sito
	
}
