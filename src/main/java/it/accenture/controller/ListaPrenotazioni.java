package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exceptions.ConnessioneException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Prenotazione;
import it.accenture.model.Utente;
import it.accenture.service.PrenotazioneService;

@WebServlet("/listaPrenotazioni")
public class ListaPrenotazioni extends HttpServlet {
	String messagePrenot = " ";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Utente u1 = (Utente) session.getAttribute("utente");
		
	
		PrenotazioneService prenot = new PrenotazioneService();
		
		prenot.getAllByUtente(u1.getIdUtente());
		
		messagePrenot = ("Gentile "+ u1.getNome() + " " + u1.getCognome() + ", questa e' la tua "
				+ "lista di prenotazioni effettuate: ");
		
		session.setAttribute("messagePrenot", messagePrenot);
		RequestDispatcher rd = req.getRequestDispatcher("/listaPrenotazioni.jsp");
		rd.forward(req, resp);
	
  }
	
}
