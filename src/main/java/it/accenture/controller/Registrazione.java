package it.accenture.controller;

import java.io.IOException;
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
import it.accenture.service.Service;
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;


@WebServlet("/registrazione")
public class Registrazione extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service service= new Service();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ErroreValidazione> lista = Validatore.validazioneUtente(req);
		if(lista.size()!=0){
			req.setAttribute("lista", lista );
			RequestDispatcher rd= req.getRequestDispatcher("registrazione.jsp");
			rd.forward(req, resp);
		}else{
		String idUtente;
		String nome = req.getParameter("nome");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setUsername(username);
		utente.setPassword(password);
		System.out.println(utente);
//		UtenteDaoImpl utenteService = null;
//		try {
//			utenteService = new UtenteDaoImpl();
//			utenteService.insertUtente(utente);
//			
//		} catch (ConnessioneException e) {
//			e.printStackTrace();
//		} catch (DAOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		utenteService.close();
//		System.out.println("utente inserito");
//		req.setAttribute("username", username);
//		RequestDispatcher dispatcher = 
//				req.getRequestDispatcher("login.jsp");
//		dispatcher.forward(req, resp);
		service.insertUtente(utente);
		service.uclose();
		req.setAttribute("username", username);
		RequestDispatcher rd= req.getRequestDispatcher("successo.jsp");
		rd.forward(req, resp);
		}
	}
	
}
