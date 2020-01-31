package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.regexp.internal.recompile;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;
import it.accenture.model.Utente;
import it.accenture.service.PrenotazioneService;
import it.accenture.service.StanzaService;

@WebServlet("/Prenota")
public class Prenota extends HttpServlet {
	String messageLogin = " ";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int ns =Integer.valueOf(req.getParameter("ns"));
		TipoStanza ts = TipoStanza.valueOf(req.getParameter("ts"));
		RequestDispatcher rd=req.getRequestDispatcher("/prenota.jsp");
		req.setAttribute("ns", ns);
		req.setAttribute("ts", ts);
		rd.forward(req,resp);
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		PrenotazioneService prenotazioneService = new PrenotazioneService();
	//	Prenotazione prenotazioneBean =new Prenotazione();
		StanzaService stanzaService = new StanzaService();
		Stanza stanzaBean = new Stanza();
//		System.out.println("entrato !!!!!!!!!!!!!!!!!");
//		System.out.println(session.getAttribute("ns"));
		System.out.println(req.getParameter("nspar"));
		int ns =Integer.parseInt(req.getParameter("nspar"));
		TipoStanza ts = TipoStanza.valueOf(req.getParameter("tspar"));

		System.out.println(ns);
		System.out.println(ts);
	
	
		Object u = session.getAttribute("utente");
		Utente u1= (Utente) u;
		LocalDate di;
		LocalDate df;
		Object ob;
		Formula f;
		
		System.out.println("stampa da dopost: "+ns);
		
		di= LocalDate.parse(req.getParameter("dataInizio"));
		df= LocalDate.parse(req.getParameter("dataFine"));
		
		f=Formula.valueOf(req.getParameter("formula"));
		

		
//		try {
//			stanzaBean = stanzaService.getStanzaById(ns);
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (DAOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (ConnessioneException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	
		int numeroGiorni = Period.between(di, df).getDays();
		double prezzoNotte = stanzaBean.getPrezzoNotte();
		double prezzoTotale = (prezzoNotte*numeroGiorni*stanzaBean.getPostiLetto());
		
		String messagePrenotazione;
		
		
		try {
//			if(prenotazioneService.controlloDate(di, df, ns) ){
				

				try {
					Prenotazione prenotazioneBean= new Prenotazione(numeroGiorni,di,df,f,prezzoTotale,u1.getIdUtente(),ns);
				//	System.out.println("beanPrenotazione " +prenotazioneBean);
					prenotazioneService.insertPrenotazione(prenotazioneBean);
					messagePrenotazione = "La tua prenotazione è stata effettuata con successo!";
					session.setAttribute("messagePrenotazione", messagePrenotazione);
//					RequestDispatcher rd=req.getRequestDispatcher("/listaPrenotazioni.jsp");
//					rd.forward(req,resp);
					resp.sendRedirect("/ListaPrenotazioni");
				} catch (ConnessioneException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
//			}
//			else {
//				messagePrenotazione = "Errore! Stanza non disponibile nel periodo selezionato. Riprova con altre date.";
//				session.setAttribute("messagePrenotazione", messagePrenotazione);
//				RequestDispatcher rd = req.getRequestDispatcher("/prenota.jsp");
//				rd.forward(req, resp);
//			}
		} catch (NumberFormatException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}
	
	
	
}
