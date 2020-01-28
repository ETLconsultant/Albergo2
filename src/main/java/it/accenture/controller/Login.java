package it.accenture.controller;
//ghijuoikpl
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

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

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long seriaHtlVersionUID = 1L;
	private Utente u=new Utente();
	
	public Login() {
        super();
    }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String regexP ="^(?=.[a-z])(?=.[A-Z])(?=.[0-9])(?=.[#$^+=!*()@%&]).{8,}";
		String regexE ="\\w+([\\.-]?\\w+)@\\w+([\\.-]?\\w+)(\\.\\w{2,3})+}";
		
		if(u.getUsername()!=null) {
			if((u.getPassword().equalsIgnoreCase(password))) {
				session.setAttribute("username", username );
				session.setAttribute("password", password );
				session.setAttribute("idUtente", u.getId());
				session.setAttribute("nome", u.getNome());
				req.setAttribute("messaggio", "Accesso consentito! Benvenuto nella tua area personale!");
				RequestDispatcher rd= req.getRequestDispatcher("listaPresentazioni.jsp");
				rd.forward(req, resp);
			}
			else{
				String messaggio="password errata";
				req.setAttribute("messaggio", messaggio);
				RequestDispatcher rd= req.getRequestDispatcher("Home.jsp");
				rd.include(req, resp);
			}
		}else {
			String messaggio="utente inesistente";
			req.setAttribute("messaggio", messaggio);
			RequestDispatcher rd= req.getRequestDispatcher("Home.jsp");
			rd.include(req, resp);
			
		}
	//vubihn
		//guyio
	}
}