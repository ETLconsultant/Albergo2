package it.accenture.controller;

import java.io.IOException;
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
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Periodo;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;
import it.accenture.service.Service;

@WebServlet("/listaStanze")
public class ListaStanze extends HttpServlet {

	public ListaStanze(){
		super();
	        // TODO Auto-generated constructor stub
	}
	  
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessione=request.getSession();
		
		TipoStanza tipoStanza=TipoStanza.valueOf(request.getParameter("tipoStanza"));
		
		Service stanzaService = new Service();
		Stanza s=new Stanza();
		ArrayList<Stanza> listaStanze=new ArrayList<Stanza>();
		
		
		
		
		
		switch(tipoStanza) {
		case STANDARD:
//			String messaggio="";
//			request.setAttribute("msg", messaggio);
			listaStanze=stanzaService.getAllByTipoStanza(TipoStanza.STANDARD);
			sessione.setAttribute("Standard", listaStanze );
			RequestDispatcher rd= request.getRequestDispatcher("/standard.jsp");
			rd.forward(request, response);
		break;
		case FAMILY:
//			String messaggio="";
//			request.setAttribute("msg", messaggio);
			listaStanze=stanzaService.getAllByTipoStanza(TipoStanza.FAMILY);
			sessione.setAttribute("Family", listaStanze );
			RequestDispatcher rd1= request.getRequestDispatcher("/family.jsp");
			rd1.forward(request, response);
		break;
		case BUSINESS:
//			String messaggio="";
//			request.setAttribute("msg", messaggio);
			listaStanze=stanzaService.getAllByTipoStanza(TipoStanza.BUSINESS);
			sessione.setAttribute("Business", listaStanze );
			RequestDispatcher rd2= request.getRequestDispatcher("/business.jsp");
			rd2.forward(request, response);
		case SUITE:
//			String messaggio="";
//			request.setAttribute("msg", messaggio);
			listaStanze=stanzaService.getAllByTipoStanza(TipoStanza.SUITE);
			sessione.setAttribute("Suite", listaStanze );
			RequestDispatcher rd3= request.getRequestDispatcher("/suite.jsp");
			rd3.forward(request, response);
		break;
		default:
		}
	}
}
		
