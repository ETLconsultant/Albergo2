package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
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
import exceptions.DAOException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Periodo;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;
import it.accenture.service.StanzaService;

@WebServlet("/ListaStanze")
public class ListaStanze extends HttpServlet {
	StanzaService stanzaService = new StanzaService();
	Stanza stanza = new Stanza();
	ArrayList<Stanza> listaStanze = new ArrayList<Stanza>();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
//		String numerostanza = (String)req.getParameter("numero_stanza");
//		String tipoStanza = req.getParameter("tipo_stanza");
//		String postiLetto= (String)req.getParameter("posti_letto");
//		String prezzoNotte = (String)req.getParameter("prezzo_notte");
//		String disponibilitÓ = (String)req.getParameter("disponibile");
		
		try {
			
			listaStanze = stanzaService.getAllStanza();
			System.out.println(listaStanze);
			session.setAttribute("stanze", listaStanze);
			RequestDispatcher rd =req.getRequestDispatcher("/listaStanze.jsp"); 
			rd.forward(req, resp);
//			session.setAttribute(numerostanza, "numerostanza");
//			session.setAttribute(tipoStanza, "tipostanza");
//			session.setAttribute(postiLetto, "postiletto");
//			session.setAttribute(prezzoNotte, "prezzonotte");
//			session.setAttribute(disponibilitÓ, "disponibilitÓ");
//			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ConnessioneException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	
	
}
