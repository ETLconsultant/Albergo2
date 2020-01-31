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
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;

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

		int	ns =Integer.parseInt(req.getParameter("nspar"));
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
		
		System.out.println(req.getParameter("dataInizio"));
		
		di= LocalDate.parse(req.getParameter("dataInizio"));
		df= LocalDate.parse(req.getParameter("dataFine"));
		System.out.println(req.getParameter("formula"));
		f=Formula.valueOf(req.getParameter("formula"));
		

		
		try {
			stanzaBean = stanzaService.getStanzaById(ns);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ConnessioneException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		int numeroGiorni = Period.between(di, df).getDays();
		double prezzoNotte = stanzaBean.getPrezzoNotte();
		System.out.println(numeroGiorni);
		System.out.println(prezzoNotte);
		System.out.println(stanzaBean);
		double prezzoTotale = (prezzoNotte*numeroGiorni*stanzaBean.getPostiLetto());
		
		String messagePrenotazione;
		
		
		try {
//			if(prenotazioneService.controlloDate(di, df, ns) ){
				

				try {
					
					List<ErroreValidazione> listaErroriDate = Validatore.validazionePrenota(req);
					
					if(listaErroriDate.size()!=0){
						req.setAttribute("listaErroriDate", listaErroriDate);
						req.setAttribute("ns1", ns);
						req.setAttribute("ts1", ts);
						System.out.println(listaErroriDate);
						RequestDispatcher dis = req.getRequestDispatcher("prenota.jsp");
						dis.forward(req, resp);
						getServletContext().getRequestDispatcher("/prenota.jsp").include(req, resp);
						return;
					}
					
					Prenotazione prenotazioneBean= new Prenotazione();
					prenotazioneBean.setNumeroGiorni(numeroGiorni);
					prenotazioneBean.setDataInizio(di);
					prenotazioneBean.setDataFine(df);
					prenotazioneBean.setFormula(f);
					prenotazioneBean.setNumeroGiorni(numeroGiorni);
					prenotazioneBean.setPrezzoTotale(prezzoTotale);
					prenotazioneBean.setIdUtente(u1.getIdUtente());
					prenotazioneBean.setNumeroStanza(ns);
					
				//	System.out.println("beanPrenotazione " +prenotazioneBean);
					prenotazioneService.insertPrenotazione(prenotazioneBean);
					messagePrenotazione = "La tua prenotazione è stata effettuata con successo!";
					req.setAttribute("messagePrenotazione", messagePrenotazione);
					RequestDispatcher rd=req.getRequestDispatcher("ListaPrenotazioni");
					rd.forward(req,resp);
//					resp.sendRedirect("ListaPrenotazioni");
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
