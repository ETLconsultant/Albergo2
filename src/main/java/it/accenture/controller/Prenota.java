package it.accenture.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.accenture.UtenteWeb.Service.UserService;

import exceptions.ConnessioneException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.Utente;
import it.accenture.service.Service;

@WebServlet("/prenota")
public class Prenota extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Service service= new Service();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		String messaggio;
		int idUtente=(int) sessione.getAttribute("idUtente");
		String username=(String) sessione.getAttribute("username");
		String nome=(String) sessione.getAttribute("nome");
		LocalDate dataInizio=LocalDate.parse(req.getParameter("dataInizio"));
		LocalDate dataFine=LocalDate.parse(req.getParameter("dataFine"));
		int numeroStanza=Integer.parseInt(req.getParameter("numeroStanza"));
		
		
		
	}
	
	
	
}
