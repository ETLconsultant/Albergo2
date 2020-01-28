package it.accenture.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;

public interface StanzaDao {

	public ArrayList<Stanza> getAll() throws DAOException, ConnessioneException, SQLException;
	
	public void updateDisponibile(boolean disponibile, int numeroStanza) throws DAOException, ConnessioneException, SQLException;
	
	public Stanza getStanzaById(int numeroStanza) throws DAOException, ConnessioneException, SQLException;
	
	public ArrayList<TipoStanza> getAllTipoStanza() throws SQLException;
	
	public void close();
	
	
}
