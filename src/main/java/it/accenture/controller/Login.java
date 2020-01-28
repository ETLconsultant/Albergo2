package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.service.UtenteService;
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;
import exceptions.ConnessioneException;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	
	UtenteService userservice = new UtenteService();
	Utente user = new Utente();
	String messageLogin="  ";
	String messageArea=" ";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	List<ErroreValidazione> lista = Validatore.validazioneUtente(request);
		
		if(lista.size()!=0){
			request.setAttribute("lista", lista );
			System.out.println(lista);
			getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		
		request.removeAttribute("nome");
		request.removeAttribute("cognome");
		
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		
		session.setAttribute("messageArea", messageArea);
		session.setAttribute("messageLogin", messageLogin);
		System.out.println("strunz" );
		try {
			System.out.println(" ma davvero?" + userservice.loginControl(username, password));
			if(userservice.loginControl(username, password)== false) {
				System.out.println("errore nel if del try");
				messageLogin="Username o password errati";
				session.setAttribute("messageLogin", messageLogin);
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
				return;
				
			}else {
				messageArea=("Bentornato " + username +"!");
				session.setAttribute("messageArea", messageArea);
				
			
//				session.setAttribute("password", password);
//				session.setAttribute("username", username);
				
				session.setAttribute("utente", userservice.getByUsernameAndPassword(username, password));
				
				RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
				rd.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
	}
	

