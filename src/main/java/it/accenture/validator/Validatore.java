package it.accenture.validator;

import java.io.Serializable;
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
		String passwordExpression = "^(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z])(?=.*[@#$%*^&+=])(?=\\S+$).{8,16}$";
//		String specialCharacterExpression = "^(?=.*[@#$%*^&+=])$";
//		String atLeastOneNumberExpression = "^(?=.*[0-9])$";
//		String atLeastOneSmallLetterExpression = "^(?=.*[a-z])$";
//		String atLeastOneBigLetterExpression = "^(?=.*[A-Z])$";
//		String noSpacesException = "^(?=\\S+$)$";
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
		else if(!isPasswordValid) {
			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.password")));
			System.out.println("!password.matches(isPasswordValid)");
		}
//		else if(!password.matches(atLeastOneNumberExpression)) {
//			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.atleastonenumber")));
//			System.out.println("password.matches(atLeastOneNumberExpression");
//		}
//		else if(!password.matches(atLeastOneSmallLetterExpression)) {
//			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.atleastonesmall")));
//			System.out.println("!password.matches(atLeastOneSmallLetterExpression)");
//		}
//			
//		else if(!password.matches(atLeastOneBigLetterExpression)) {
//			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.atleastonebig")));
//			System.out.println("!password.matches(atLeastOneBigLetterExpression");
//		}
//		else if(!password.matches(noSpacesException)) {
//			lista.add(new ErroreValidazione("password", "password " + bundle.getString("error.nospaces")));
//			
//		}
		String nome = request.getParameter("nome");
		
		if(nome == null || nome.length() == 0)
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.required")));
		else if(nome.length() >= 20)
			lista.add(new ErroreValidazione("nome", "nome " + bundle.getString("error.maxlength") + " 20"));			
		
		String cognome = request.getParameter("cognome");
		if(cognome == null || cognome.length() == 0)
			lista.add(new ErroreValidazione("cognome", "cognome " + bundle.getString("error.required")));
		else if(cognome.length() >= 20)
			lista.add(new ErroreValidazione("cognome", "cognome" + bundle.getString("error.maxlength") + " 20"));			
		
		//TODO: continuare con gli eventuali controlli di validità che si ritiene necessari
		
		return lista;
	}

	//TODO: aggiungere tutti i controlli per le diverse form del sito
	
}
