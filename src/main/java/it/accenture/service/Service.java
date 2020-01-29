package it.accenture.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import exceptions.DAOException;
import it.accenture.dao.PrenotazioneDaoImpl;
import it.accenture.dao.StanzaDaoImpl;
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;
import it.accenture.model.Utente;
//volevo risolvere 
public class Service {
	private PrenotazioneDaoImpl pdao = new PrenotazioneDaoImpl();
	private StanzaDaoImpl sdao = new StanzaDaoImpl();
	private UtenteDaoImpl udao = new UtenteDaoImpl();

	
	//METODI DI PRENOTAZIONE DAO

	public void insertPrenotazione(Prenotazione prenotazione) {
		try {
			if(prenotazione.getIdUtente()==0) {
				throw new DAOException("Prenotazione senza utente");
			}
			pdao.insertPrenotazione(prenotazione);
			}
			catch (DAOException e){
				e.printStackTrace();
			}
		}
	
	//Ho cambiato il nome in getPrenotazioniByUtente da getAll che non si capiva
	public ArrayList<Prenotazione> getPrenotazioniByUtente(int idUtente){
		return pdao.getAllByUtente(idUtente);
	}
	//tutti i close si chiamano con la loro lettera davanti sennò davano problemi che sono tutti void
	public void pclose() {
		pdao.close();
	}

	public ArrayList<Periodo> getPeriodiByStanza(int numeroStanza){
		return pdao.getPeriodiByStanza(numeroStanza);

	}
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine,
			int numeroStanza) {
		return pdao.controlloDate(dataInizio, dataFine, numeroStanza);

	}
	public void controlloDisponibilitaQuotidiana(ArrayList<Stanza> listaStanze) {
		pdao.controlloDisponibilitaQuotidiana(listaStanze);
	}

	//METODI DI STANZA DAO

	//Ho cambiato in getAllStanze al posto di getAll che non si capiva
	public ArrayList<Stanza> getAllStanze(){
		return sdao.getAll();
	}

	public void updateDisponibile(boolean disponibile, int numeroStanza) {
		sdao.updateDisponibile(disponibile, numeroStanza);
	}

	public Stanza getStanzaById(int numeroStanza) {
		return sdao.getStanzaById(numeroStanza);

	}
	
	public ArrayList<Stanza> getAllByTipoStanza(TipoStanza tipoStanza){
		return sdao.getAllByTipoStanza(tipoStanza);
	}

	public void sclose() {
		sdao.close();

	}
	//METODI DI UTENTE DAO
	
public void insertUtente(Utente utente) {

	try {
		udao.insertUtente(utente);
	} catch (DAOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		System.out.println(e.getMessage());
	}

}
	
	public Utente getByUsernameAndPassword(String username, 
			String password) {
		return udao.getByUsernameAndPassword(username, password);
	}
	
	public void updateUtente(Utente utente) {
		udao.updateUtente(utente);
	}
	
	public void deleteUtenteById(int idUtente) {
		udao.deleteUtenteById(idUtente);
	}
	
	public void uclose() {
		udao.close();
	}
}
