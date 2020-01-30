package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.model.Utente;
import it.accenture.service.UtenteService;

/**
 * Servlet implementation class ServletDelete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteService us=new UtenteService();
	private Utente ub = new Utente();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessione = request.getSession();
		String idUtente = (String)sessione.getAttribute("id_utente");
	
		ub.setIdUtente(Integer.parseInt(idUtente));
		
	
		
		try {
			us.deleteteUtenteById(Integer.parseInt(idUtente));
			request.setAttribute("msg", "cancellazione avvenuta con successo");
			RequestDispatcher rd =request.getRequestDispatcher("/Home.jsp"); 
			rd.forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
