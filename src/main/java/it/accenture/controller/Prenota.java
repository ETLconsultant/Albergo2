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
		Prenotazione prenotazioneBean =new Prenotazione();
		StanzaService stanzaService = new StanzaService();
		Stanza stanzaBean = new Stanza();
//		System.out.println("entrato !!!!!!!!!!!!!!!!!");
//		System.out.println(session.getAttribute("ns"));
		int ns;
		
		
	

	
	
		Object u = session.getAttribute("utente");
		Utente u1= (Utente) u;
		LocalDate di;
		LocalDate df;
		Object ob;
		Formula f;
		if(req.getParameter("dataInizio")!=null) {
		
		di= LocalDate.parse(req.getParameter("dataInizio"));
		df= LocalDate.parse(req.getParameter("dataFine"));
		
		ob=req.getParameter("formula");
		f=(Formula)ob;
		
		RequestDispatcher rd=req.getRequestDispatcher("/listaPrenotazioni.jsp");
		rd.forward(req,resp);
		}
		
//		Prenotazione beanPrenotazione= new Prenotazione(2,di,df,f,u1.getIdUtente(),ns);
//		prenotazioneService.insertPrenotazione(beanPrenotazione);
		
//		try {
//			stanzaBean = stanzaService.getStanzaById(Integer.parseInt(req.getParameter("numero_stanza")));
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
//		
//		LocalDate dataInizio = LocalDate.parse(req.getParameter("dataInizio"));
//		LocalDate dataFine = LocalDate.parse(req.getParameter("dataFine"));
//		Formula formula = Formula.valueOf(req.getParameter("formula"));
//		int numeroGiorni = Period.between(dataInizio, dataFine).getDays();
//		double prezzoNotte = stanzaBean.getPrezzoNotte();
//		double prezzoTotale = (prezzoNotte*numeroGiorni*stanzaBean.getPostiLetto());
//		int numeroStanza = stanzaBean.getNumeroStanza();
//		String messagePrenotazione = " ";
//		
//		try {
//			if(numeroGiorni>0 && prenotazioneService.controlloDate(dataInizio, dataFine, Integer.parseInt(req.getParameter("numero_stanza"))) ){
//				
//				prenotazioneBean.setDataFine(dataFine);
//				prenotazioneBean.setDataInizio(dataInizio);
//				prenotazioneBean.setFormula(formula);
//				prenotazioneBean.setIdUtente(Integer.parseInt((String) session.getAttribute("id_utente")));
//				prenotazioneBean.setNumeroGiorni(numeroGiorni);
//				prenotazioneBean.setPrezzoTotale(prezzoTotale);
//				prenotazioneBean.setNumeroStanza(numeroStanza);
//				
//				try {
//					prenotazioneService.insertPrenotazione(prenotazioneBean);
//				} catch (ConnessioneException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				
//				messagePrenotazione = "La tua prenotazione è stata effettuata con successo!";
//				session.setAttribute("messagePrenotazione", messagePrenotazione);
//				RequestDispatcher rd = req.getRequestDispatcher("/prenota.jsp");
//				rd.forward(req, resp);
//			}
//			else {
//				messagePrenotazione = "Errore! Stanza non disponibile nel periodo selezionato. Riprova con altre date.";
//				session.setAttribute("messagePrenotazione", messagePrenotazione);
//				RequestDispatcher rd = req.getRequestDispatcher("/prenota.jsp");
//				rd.forward(req, resp);
//			}
//		} catch (NumberFormatException | SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		  
	}
	
	
	
}
