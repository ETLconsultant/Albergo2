package it.accenture.dao;

import java.sql.SQLException;
import java.util.List;

import exceptions.DAOException;
import it.accenture.model.Utente;

public interface UtenteDao {

	public void insertUtente(Utente utente) throws DAOException, SQLException;
	
	public Utente getByUsernameAndPassword(String username, 
			String password) throws SQLException;
	
	public void updateUtente(Utente utente) throws SQLException;
	
	public void deleteteUtenteById(int idutente) throws SQLException;
	
	public void close();
	
	
	
}