package it.accenture.controller;
//ghijuoikpl
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exceptions.ConnessioneException;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;
import it.accenture.service.Service;
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long seriaHtlVersionUID = 1L;
	private Utente u = new Utente();
	
	public Login() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			HttpSession sessione = req.getSession();
			String username=req.getParameter("username");
			String password=req.getParameter("password");
			Service us = new Service();
			u = us.getByUsernameAndPassword(username, password);
			
			if((u == null)) {
				
				String messaggio="Utente non registrato o username e/o password errati!";
				req.setAttribute("messaggio", messaggio);
				RequestDispatcher rd= req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
				
			}else {
				sessione.setAttribute("username", username);
				sessione.setAttribute("password", password);
				String messaggio="Benvenuto!";
				req.setAttribute("messaggio", messaggio);
				RequestDispatcher rd= req.getRequestDispatcher("/Home.jsp");
				rd.include(req, resp);
				
			}
	}
}