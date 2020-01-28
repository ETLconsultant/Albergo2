package it.accenture.service;

import java.time.LocalDate;
import java.util.List;

import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;

public class PrenotazioneService {
	
	//Nel costruttore PrenotazioneDaoImpl() cancellare il throws e mettere
	//un blocco try catch dove gestire l'eccezione.
	
	private PrenotazioneDaoImpl PrenotazioneDao = new PrenotazioneDaoImpl();
	
	public void insertPrenotazione(Prenotazione prenotazione) {
		PrenotazioneDao.insertPrenotazione(prenotazione);
	}
	
	public List<Prenotazione> getAllByUtente(int idUtente) {
		return PrenotazioneDao.getAllByUtente(idUtente);
	}
	
	public List<Periodo> getPeriodiByStanza(int numeroStanza) {
		return PrenotazioneDao.getPeriodiByStanza(numeroStanza);
	}
	
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine, int numeroStanza) {
		return PrenotazioneDao.controlloDate(dataInizio, dataFine, numeroStanza);
	}
	
	public void controlloDisponibilitaQuotidiana(List<Stanza> listaStanze) {
		PrenotazioneDao.controlloDisponibilitaQuotidiana(listaStanze);
		
	}
	
}
