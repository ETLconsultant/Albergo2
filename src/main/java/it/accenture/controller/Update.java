package it.accenture.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.model.Utente;
import it.accenture.service.UtenteService;
import it.accenture.validator.ErroreValidazione;
import it.accenture.validator.Validatore;

/**
 * Servlet implementation class ServletUpdate
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UtenteService us=new UtenteService();
	private Utente ub = new Utente();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    List<ErroreValidazione> lista = Validatore.validazioneUtente(req);
		
		if(lista.size()!=0){
			req.setAttribute("lista", lista );
			System.out.println(lista);
			getServletContext().getRequestDispatcher("/updateDati.jsp").forward(req, resp);
			return;
		}
		
        HttpSession sessione = req.getSession();
		
        String idUtente =(String.valueOf(sessione.getAttribute("id_utente")));
		String user = req.getParameter("username");
		String cognome = req.getParameter("cognome");
		String pass = req.getParameter("password");
		String name = req.getParameter("nome");
		
		
		//setto il nuovo utente
		ub.setIdUtente(Integer.parseInt(idUtente));
		ub.setUsername(user);
		ub.setPassword(pass);
		ub.setNome(name);
		ub.setCognome(cognome);


				try {
						us.updateUtente(ub);;
						sessione.setAttribute("username", ub.getUsername());
						sessione.setAttribute("nome", ub.getNome());
						sessione.setAttribute("cognome", ub.getCognome());
						sessione.setAttribute("password", ub.getPassword());
						
						req.setAttribute("msg", "Aggiornamento dei dati avvenuto con successo!");
						RequestDispatcher rd =req.getRequestDispatcher("/areaPersonale.jsp"); 
						rd.forward(req, resp);

				}catch (SQLException e) {
					e.printStackTrace();
				}
	}

}
