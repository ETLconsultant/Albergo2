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
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;
import it.accenture.model.Utente;
import it.accenture.service.Service;

@WebServlet("/listaPrenotazioni")
public class ListaPrenotazioni extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione=req.getSession();
		ArrayList<Prenotazione> listaPrenotazioni=new ArrayList<Prenotazione>();
		
		Service PrenotazioneService = new Service();
		String submit=req.getParameter("listaPrenotazioni");
		Integer idUtente=(Integer) sessione.getAttribute("idUtente");
		
		if(PrenotazioneService.getPrenotazioniByUtente(idUtente)!=null) {
			listaPrenotazioni=PrenotazioneService.getPrenotazioniByUtente(idUtente);
			sessione.setAttribute("listaPrenotazione", listaPrenotazioni );
			RequestDispatcher rd= req.getRequestDispatcher("/listaPrenotazioni.jsp");
			rd.forward(req, resp);
		}else {
			RequestDispatcher rd= req.getRequestDispatcher("/Home.jsp");
			rd.include(req, resp);
		}
	}
}
	
	

