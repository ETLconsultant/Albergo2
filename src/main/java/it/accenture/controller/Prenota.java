package it.accenture.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exceptions.ConnessioneException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.Utente;
import it.accenture.service.Service;

@WebServlet("/Prenota")
public class Prenota extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service service= new Service();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		String messaggio;

			String bottone= req.getParameter("button");
			int numeroStanza = Integer.parseInt(bottone);
			sessione.setAttribute("numeroStanza", numeroStanza);
			String username = (String)sessione.getAttribute("username");
			
			if(username!=null) {
			RequestDispatcher rd=req.getRequestDispatcher("/prenota.jsp");
			rd.forward(req,resp);
			}
			else {
				messaggio="Devi effettuare il login per prenotare";
				req.setAttribute("messaggio", messaggio);
				RequestDispatcher rd=req.getRequestDispatcher("/login.jsp");
				rd.forward(req,resp);
				
			}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		String messaggio;

		int idUtente=(int) sessione.getAttribute("idUtente");
		String username=(String) sessione.getAttribute("username");
		String nome=(String) sessione.getAttribute("nome");
		String password=(String)sessione.getAttribute("password");
		LocalDate dataInizio=LocalDate.parse(req.getParameter("dataInizio"));
		LocalDate dataFine=LocalDate.parse(req.getParameter("dataFine"));
		int numeroStanza=(int) sessione.getAttribute("numeroStanza");
		Formula formula= Formula.valueOf(req.getParameter("formula"));


		Utente u= new Utente();
		Stanza s=new Stanza();
		Prenotazione p= new Prenotazione();


		s=service.getStanzaById(numeroStanza);
		p.setIdUtente(idUtente);
		p.setNumeroStanza(numeroStanza);
		p.setDataInizio(dataInizio);
		p.setDataFine(dataFine);
		int numeroGiorni= (int)ChronoUnit.DAYS.between(dataInizio, dataFine);
		p.setNumeroGiorni(numeroGiorni);
		p.setFormula(formula);
		p.calcolaPrezzo(s.getPrezzoNotte(), s.getPostiLetto());

		service.insertPrenotazione(p);
		service.updateDisponibile(false, numeroStanza);


		messaggio="Prenotazione riuscita.";
		req.setAttribute("messaggio", messaggio);
		req.setAttribute("prenotazione", p);

		//			service.pclose();
		//			service.sclose();

		RequestDispatcher rd=req.getRequestDispatcher("prenotazione.jsp");
		rd.forward(req,resp);
	}


}




