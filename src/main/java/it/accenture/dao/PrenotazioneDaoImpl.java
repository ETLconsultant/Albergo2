package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;


public class PrenotazioneDaoImpl implements PrenotazioneDao {

	private Connection connection;
	private PreparedStatement prepared;
	private ResultSet resultset; 

	public PrenotazioneDaoImpl() {
		connection = SingletonConnection.getInstance();
	}


	@Override
	public void insertPrenotazione(Prenotazione prenotazione) throws DAOException {
		// TODO Auto-generated method stub
		String query = "insert into prenotazione (numero_giorni, data_inizio, data_fine, formula, prezzo_totale, id_utente, numero_stanza)"
				+ " 					values (?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query, prepared.RETURN_GENERATED_KEYS);
			prepared.setInt(1, prenotazione.getNumeroGiorni());
			prepared.setDate(2, Date.valueOf(prenotazione.getDataInizio()));
			prepared.setDate(3, Date.valueOf(prenotazione.getDataFine()));
			prepared.setString(4, prenotazione.getFormula().name());
			prepared.setDouble(5, prenotazione.getPrezzoTotale());
			prepared.setInt(6, prenotazione.getIdUtente());
			prepared.setInt(7, prenotazione.getNumeroStanza());

			int numero = prepared.executeUpdate();
			resultset = prepared.getGeneratedKeys();
			if (resultset.next()) {
				System.out.println("Auto Generated Primary Key " + resultset.getInt(1));
				prenotazione.setIdPrenotazione(resultset.getInt(1));
			}
			if(numero>0) {
				System.out.println("Prenotazione inserita correttamente");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}

	@Override
	public ArrayList<Prenotazione> getAllByUtente(int idUtente) {
		// TODO Auto-generated method stub
		ArrayList<Prenotazione> allPrenotazioniUtente =new ArrayList<Prenotazione>();

		String query= "select * from Prenotazione where id_utente=?";

		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			
			resultset=prepared.executeQuery();

			while(resultset.next()) {
				Prenotazione p = new Prenotazione();
				p.setIdPrenotazione(resultset.getInt("id_prenotazione"));
				p.setNumeroGiorni(resultset.getInt("numero_giorni"));
				p.setDataInizio(resultset.getDate("data_inizio").toLocalDate());
				p.setDataFine(resultset.getDate("data_fine").toLocalDate());
				p.setFormula(Formula.valueOf(resultset.getString("formula")));
				p.setPrezzoTotale(resultset.getDouble("prezzo_totale"));
				p.setIdUtente(resultset.getInt("id_utente"));
				p.setNumeroStanza(resultset.getInt("numero_stanza"));
				allPrenotazioniUtente.add(p);
			}
			}catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close();
			}
		return allPrenotazioniUtente;
	}

	@Override
	public ArrayList<Periodo> getPeriodiByStanza(int numeroStanza) {
		// TODO Auto-generated method stub
		ArrayList<Periodo> periodiPrenotazStanza = new ArrayList<Periodo>();

		String query= "select data_inizio, data_fine from prenotazione where numero_stanza=?";

		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, numeroStanza);
			
			resultset=prepared.executeQuery();

			while(resultset.next()) {
				Periodo p=new Periodo();

				p.setDataInizio(resultset.getDate("data_inizio").toLocalDate());
				p.setDataFine(resultset.getDate("data_fine").toLocalDate());

				periodiPrenotazStanza.add(p);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return periodiPrenotazStanza;
	}

	public boolean isInRange(LocalDate dataInizio, LocalDate dataFine, Periodo periodo) {
		boolean a= !(dataInizio.isBefore(periodo.getDataInizio()) || dataInizio.isAfter(periodo.getDataFine()));
		boolean b= !(dataFine.isBefore(periodo.getDataInizio()) || dataFine.isAfter(periodo.getDataFine()));
		if(a&&b) {
			return true;
		}
		else {
			return false;
		}
	}
	
	@Override
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine, int numeroStanza){
		// TODO Auto-generated method stub
		ArrayList<Periodo> periodiPrenotati = getPeriodiByStanza(numeroStanza);
		for(Periodo periodo : periodiPrenotati) {
			if((isInRange(dataInizio, dataFine, periodo) == true)) {
				return false;
			}
		}
		return true;
	}

	@Override
	public void controlloDisponibilitaQuotidiana(ArrayList<Stanza> listaStanze) {
		// TODO Auto-generated method stub

		ArrayList<Prenotazione> disp = new ArrayList<Prenotazione>();

		String query= "select * from stanza s left join prenotazione on prenotazione.numero_stanza=s.numero_stanza";
	
		try {	
			prepared = connection.prepareStatement(query);

			resultset=prepared.executeQuery();

			while(resultset.next()) {
				Prenotazione p=new Prenotazione();

				p.setIdPrenotazione(resultset.getInt("id_prenotazione"));
				p.setNumeroGiorni(resultset.getInt("numero_giorni"));
				p.setDataInizio(resultset.getDate("data_inizio").toLocalDate());
				p.setDataFine(resultset.getDate("data_fine").toLocalDate());
				p.setFormula(Formula.valueOf(resultset.getString("formula")));
				p.setPrezzoTotale(resultset.getDouble("prezzo_totale"));
				p.setIdUtente(resultset.getInt("id_utente"));
				p.setNumeroStanza(resultset.getInt("numero_stanza"));
				disp.add(p);
			}

			for (Stanza line: listaStanze){
				if(line.isDisponibile()==false) {
					for (Prenotazione prenotate: disp) {
						if (line.getNumeroStanza()==prenotate.getNumeroStanza()) {
							if (!(LocalDate.now().isBefore(prenotate.getDataInizio()) || LocalDate.now().isAfter(prenotate.getDataFine())) &&
									!(LocalDate.now().isBefore(prenotate.getDataInizio()) || LocalDate.now().isAfter(prenotate.getDataFine()))) {
								System.out.println("tutte prenotate mi spiace");
							}
							else {
								System.out.println("libera solo per oggi: " + line.getNumeroStanza());
							}
						}
					}
				}else {
					System.out.println("libera: " + line.getNumeroStanza());
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}

	@Override
	public void close() {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			if(prepared != null)
				try{
					prepared.close();
				}catch(SQLException e){
					e.printStackTrace();
				}
			if(resultset != null) 
				try{
					resultset.close();	
				}catch(SQLException e){
					e.printStackTrace();
				}
			}
		}

}



