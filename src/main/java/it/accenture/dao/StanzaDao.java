package it.accenture.dao;

import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;

public interface StanzaDao {

	public ArrayList<Stanza> getAll();
	
	public void updateDisponibile(boolean disponibile, int numeroStanza);
	
	public Stanza getStanzaById(int numeroStanza);
	
	public ArrayList<Stanza> getAllByTipoStanza(TipoStanza tipoStanza);
	
	public void close();

}
