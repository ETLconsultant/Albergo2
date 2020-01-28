package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;


public class PrenotazioneDaoImpl implements PrenotazioneDao {
	
	private Connection connection;
	private PreparedStatement prepared;
	private ResultSet resultset; 
	  
	public PrenotazioneDaoImpl() throws ConnessioneException {
		connection = SingletonConnection.getInstance();
	}
	

	@Override
	public void insertPrenotazione(Prenotazione prenotazione) throws DAOException {
		// TODO Auto-generated method stub
		String query = "insert into prenotazione (id_prenotazione,numero_giorni,data_inizio,data_fine,formula,prezzo_totale,id_utente,numero_stanza)"
				+ " 					values ( ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setInt(1, prenotazione.getIdPrenotazione());
			prepared.setInt(2, prenotazione.getNumeroGiorni());
			prepared.setDate(3, Date.valueOf(prenotazione.getDataInizio()));
			prepared.setDate(4, Date.valueOf(prenotazione.getDataFine()));
			prepared.setString(5, prenotazione.getFormula().name());
			prepared.setDouble(6, prenotazione.getPrezzoTotale());
			prepared.setInt(7, prenotazione.getIdUtente());
			prepared.setInt(6, prenotazione.getNumeroStanza());
			
			prepared.executeUpdate();
			ResultSet rs = prepared.getGeneratedKeys();
			if (rs.next()) {
				System.out.println("Auto Generated Primary Key " + rs.getInt(1));
				prenotazione.setIdPrenotazione(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException(e.getMessage());
				}
		
	}

	@Override
	public ArrayList<Prenotazione> getAllByUtente(int idUtente) {
		// TODO Auto-generated method stub
		ArrayList<Prenotazione> a=new ArrayList<Prenotazione>();

		String query= "select * from Prenotazione where idUtente=?";
		
		try {
			
			connection=SingletonConnection.getInstance();
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			resultset=prepared.executeQuery();
			
			
			while(resultset.next()) {
				Prenotazione p=new Prenotazione();
				p.setIdPrenotazione(resultset.getInt("IdPrenotazione"));
				p.setNumeroGiorni(resultset.getInt("NumeroGiorni"));
				p.setDataInizio(resultset.getDate("DataInizio").toLocalDate());
				p.setDataFine(resultset.getDate("DataFine").toLocalDate());
				p.setFormula(Formula.valueOf(resultset.getString("Formula")));
				p.setPrezzoTotale(resultset.getDouble("PrezzoTotale"));
				p.setIdUtente(resultset.getInt("IdUtente"));
				p.setNumeroStanza(resultset.getInt("NumeroStanza"));
				a.add(p);
			}}catch (SQLException e) {
				e.printStackTrace();
			} catch (ConnessioneException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				if(prepared!=null)
					try {
						prepared.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
				if(resultset!=null)
					try {
						resultset.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
				if(connection!=null)
					try {
						connection.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
			}

		return a;
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
		if(connection!=null) {
			try {
				connection.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public ArrayList<Periodo> getPeriodiByStanza(int numeroStanza) {
		// TODO Auto-generated method stub
		ArrayList<Periodo> a=new ArrayList<Periodo>();

		String query= "select data_inizio,data_fine from Prenotazione where numero_stanza=?";
		
		try {
			
			connection=SingletonConnection.getInstance();
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, numeroStanza);
			resultset=prepared.executeQuery();
			
			
			while(resultset.next()) {
				Periodo p=new Periodo();
//				p.setIdPrenotazione(resultset.getInt("IdPrenotazione"));
//				p.setNumeroGiorni(resultset.getInt("NumeroGiorni"));
				p.setDataInizio(resultset.getDate("DataInizio").toLocalDate());
				p.setDataFine(resultset.getDate("DataFine").toLocalDate());
//				p.setFormula(Formula.valueOf(resultset.getString("Formula")));
//				p.setPrezzoTotale(resultset.getDouble("PrezzoTotale"));
//				p.setIdUtente(resultset.getInt("IdUtente"));
//				p.setNumeroStanza(resultset.getInt("NumeroStanza"));
				a.add(p);
			}}catch (SQLException e) {
				e.printStackTrace();
			} catch (ConnessioneException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				if(prepared!=null)
					try {
						prepared.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
				if(resultset!=null)
					try {
						resultset.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
				if(connection!=null)
					try {
						connection.close();

					}catch (SQLException e) {
						e.printStackTrace();
					}
			}

		return a;
	}
	//miiii
   //bordello sto metodo
	@Override
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine, int numeroStanza) throws ConnessioneException {
		// TODO Auto-generated method stub
		//che si fa?????????????????
		String query= "select count* from stanza s,prenotazione p where p.numero_stanza=s.numero_stanza and s.disponibile= and data_inizio>=? and data_fine<=?"; 
		connection=SingletonConnection.getInstance();
		prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
		prepared.setInt(1, numeroStanza);
		resultset=prepared.executeQuery();
		ResultSet rs = prepared.getGeneratedKeys();
		
		if (numeroStanza.getPeriodoByStanza().getdataInizio<dataInizio && numeroStanza.getPeriodoByStanza().getdataFine>dataFine)
		return false;
	}

	@Override
	public void controlloDisponibilitaQuotidiana(List<Stanza> listaStanze) {
		// TODO Auto-generated method stub
		connection=SingletonConnection.getInstance();
		prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
		prepared.setInt(1, numeroStanza);
		resultset=prepared.executeQuery();
		ResultSet rs = prepared.getGeneratedKeys();
		
	}


}
