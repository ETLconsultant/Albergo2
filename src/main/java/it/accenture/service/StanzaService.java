package it.accenture.service;

import java.sql.SQLException;
import java.util.ArrayList;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;

public class StanzaService {
	
	private StanzaDaoImpl stanzaDao = new StanzaDaoImpl();
	
	public ArrayList<Stanza> getAllStanza() throws DAOException, ConnessioneException, SQLException {
		return stanzaDao.getAll();
		
	}
	
	public void updateDisponibile(boolean disponibile, int numeroStanza) throws DAOException, ConnessioneException, SQLException {
		stanzaDao.updateDisponibile(disponibile, numeroStanza);
	}
	
	public Stanza getStanzaById(int numeroStanza) throws DAOException, ConnessioneException, SQLException {
		return stanzaDao.getStanzaById(numeroStanza);
	}
	
	public ArrayList<TipoStanza> getAllTipoStanza() throws SQLException {
		return stanzaDao.getAllTipoStanza();
	}

}
