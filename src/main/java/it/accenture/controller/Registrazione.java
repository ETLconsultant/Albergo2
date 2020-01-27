package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;
;

@WebServlet("/registrazione")
public class Registrazione extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ErroreValidazione> lista = Validatore.validazioneUtente(req);
		
		if(lista.size()!=0){
			req.setAttribute("lista", lista );
			System.out.println(lista);
			getServletContext().getRequestDispatcher("/WEB-INF/jsp/registrazione.jsp").forward(req, resp);
			return;
		}
		
//		String idUtente =req.getParameter("idUtente");
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setUsername(username);
		utente.setPassword(password);
		UtenteDaoImpl utenteService = null;
		try {
			utenteService = new UtenteDaoImpl();
			utenteService.insertUtente(utente);
			System.out.println(utente);

		} catch (ConnessioneException e) {
			e.printStackTrace();
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		utenteService.close(); Il close() viene chiamato da insertUtente
		System.out.println("utente inserito");
		req.setAttribute("username", username);
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("login.jsp");
		dispatcher.forward(req, resp);
	}
	
}
