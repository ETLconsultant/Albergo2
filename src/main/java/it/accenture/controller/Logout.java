package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
	String messageLogout=" ";
	String messageArea=" ";
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		messageArea= " ";
		messageLogout="Arrivederci, alla prossima!";
		req.setAttribute("messageLogout", messageLogout);
		session.setAttribute("messageArea", messageArea);
		
		System.out.println("logout effettuato");
		session.invalidate();
		RequestDispatcher rd = req.getRequestDispatcher("/Home.jsp");
		rd.forward(req, resp);
		
	}
	
}
