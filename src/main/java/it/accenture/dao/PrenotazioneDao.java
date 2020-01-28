package it.accenture.dao;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;

public interface PrenotazioneDao {

	public void insertPrenotazione(Prenotazione prenotazione) throws SQLException;
	
	public List<Prenotazione> getAllByUtente(int idUtente)throws SQLException;
	
	public void close()throws SQLException;
	
	public List<Periodo> getPeriodiByStanza(int numeroStanza)throws SQLException;
	
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine,
			int numeroStanza)throws SQLException;
	
	public void controlloDisponibilitaQuotidiana(List<Stanza> listaStanze)throws SQLException;
}
