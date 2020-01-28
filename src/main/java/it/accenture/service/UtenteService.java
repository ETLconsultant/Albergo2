package it.accenture.service;



import java.sql.SQLException;

import exceptions.DAOException;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class UtenteService {
	
	private UtenteDaoImpl UtenteDao = new UtenteDaoImpl();

	
	public boolean loginControl(String username, String passwordInserita) throws SQLException {
		return UtenteDao.loginControl(username, passwordInserita);
	}
	public void insertUtente(Utente utente) throws DAOException, SQLException {
		UtenteDao.insertUtente(utente);
	}
	public Utente getByUsernameAndPassword(String username, String password) throws SQLException {
		return UtenteDao.getByUsernameAndPassword(username, password);
	}
	public void updateUtente(Utente utente) throws SQLException {
		UtenteDao.updateUtente(utente);
	}
	public void deleteteUtenteById(int idUtente) throws SQLException {
		UtenteDao.deleteteUtenteById(idUtente);
	}
	public UtenteService() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
