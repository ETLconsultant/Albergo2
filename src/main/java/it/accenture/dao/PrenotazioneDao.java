package it.accenture.dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import exceptions.DAOException;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;

public interface PrenotazioneDao {

	public void insertPrenotazione(Prenotazione prenotazione) throws DAOException;
	
	public ArrayList<Prenotazione> getAllByUtente(int idUtente);

	public ArrayList<Periodo> getPeriodiByStanza(int numeroStanza);
	
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine, int numeroStanza);
	
	public void controlloDisponibilitaQuotidiana(ArrayList<Stanza> listaStanze);

	public void close();
	
}
