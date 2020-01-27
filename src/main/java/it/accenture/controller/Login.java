package it.accenture.controller;

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

import com.accenture.service.UtenteService;


import exceptions.ConnessioneException;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	
	UtenteService userservice = new UtenteService();
	Utente user = new Utente();
	String messageLogin="  ";
	String messageArea=" ";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		session.setAttribute("messageArea", messageArea);
		session.setAttribute("messageLogin", messageLogin);
		
		try {
			if(userservice.loginControl(username, password)== false) {
				
				messageLogin="Username o password errati";
				session.setAttribute("messageLogin", messageLogin);
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
				
			}else {
				messageArea=("Bentornato " + username +"!");
				session.setAttribute("messageArea", messageArea);
				
			
				session.setAttribute("password", password);
				session.setAttribute("username", username);
				
				RequestDispatcher rd = request.getRequestDispatcher("/Home.jsp");
				rd.forward(request, response);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
	}
	

