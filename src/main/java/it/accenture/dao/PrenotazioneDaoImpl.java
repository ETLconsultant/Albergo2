package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;



import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Formula;
import it.accenture.model.Periodo;
import it.accenture.model.Prenotazione;
import it.accenture.model.Stanza;
import it.accenture.service.StanzaService;


public class PrenotazioneDaoImpl implements PrenotazioneDao {
	
	private Connection connection;
	private PreparedStatement prepared;
	private ResultSet rs;
	
	public PrenotazioneDaoImpl() {
		try {
			connection = SingletonConnection.getInstance();
		} catch (ConnessioneException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void insertPrenotazione(Prenotazione prenotazione) throws SQLException, ConnessioneException{

		String query= "insert into prenotazione (numero_giorni,data_inizio,data_fine,formula,prezzo_totale,id_utente,numero_stanza) values (?,?,?,?,?,?,?)";
		StanzaService stanzaService= new StanzaService();
	
		prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
	//	PreparedStatement prepared1= connection.prepareStatement(query);
		prepared.setInt(1,prenotazione.getNumeroGiorni());
		prepared.setDate(2,Date.valueOf(prenotazione.getDataInizio()));
		prepared.setDate(3,Date.valueOf(prenotazione.getDataFine()));
		prepared.setObject(4,prenotazione.getFormula().toString());
		prepared.setDouble(5,prenotazione.getPrezzoTotale());
		prepared.setInt(6,prenotazione.getIdUtente());
		prepared.setInt(7,prenotazione.getNumeroStanza());
		
		
	
		int num = prepared.executeUpdate();
		if (num>0) {
			try {
				stanzaService.updateDisponibile(false, prenotazione.getNumeroStanza());
			} catch (DAOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		close();
		
			
//		System.out.println(prepared.RETURN_GENERATED_KEYS);
//		System.out.println(prepared.getGeneratedKeys());

//		System.out.println(prepared.getGeneratedKeys());
//		ResultSet rs = prepared.getGeneratedKeys();
//				prepared.getGeneratedKeys();
//		if (rs.next()) {
//			System.out.println("Auto Generated Primary Key " + rs.getInt("id_prenotazione"));
//			prenotazione.setIdPrenotazione(rs.getInt(1));
//		}
		
		
		
	}

	@Override
	public List<Prenotazione> getAllByUtente(int idUtente) throws SQLException{
	
		String query="select * from prenotazione p where  p.id_utente=?";
		
		prepared=connection.prepareStatement(query);
		
		prepared.setInt(1,idUtente);
		
		ResultSet rs= prepared.executeQuery();
		ArrayList<Prenotazione> elencoPrenotazioni= new ArrayList<Prenotazione>();
		
		Formula f = Formula.BB;
		
		while(rs.next()) {
		Prenotazione bean=new Prenotazione(rs.getInt("numero_giorni"), rs.getDate("data_inizio").toLocalDate(),rs.getDate("data_fine").toLocalDate(), Formula.valueOf(rs.getString("formula")), rs.getDouble("prezzo_totale"), rs.getInt("id_utente"), rs.getInt("numero_stanza"));
		elencoPrenotazioni.add(bean);
		}
		close();
		return elencoPrenotazioni;
		
	}

	@Override
	public void close()  throws SQLException {
		if (prepared!=null)
			try {
				prepared.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		if(rs!=null)
			try {
				rs.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
	
	}

	@Override
	public List<Periodo> getPeriodiByStanza(int numeroStanza) throws SQLException{

		String query="select p.data_inizio, p.data_fine from prenotazione p where  p.numero_stanza=?";
		
		
		prepared=connection.prepareStatement(query);
		prepared.setInt(1,numeroStanza);
		ResultSet rs= prepared.executeQuery();
		ArrayList<Periodo> periodi_pren= new ArrayList<Periodo>();
		
		while(rs.next()) {
	
		Periodo bean=new Periodo();
		bean.setDataInizio(rs.getDate("data_inizio").toLocalDate());
		bean.setDataFine(rs.getDate("data_fine").toLocalDate());
		periodi_pren.add(bean);
		}
		close();
		return periodi_pren;
	}

	@Override
	public boolean controlloDate(LocalDate dataInizio, LocalDate dataFine, int numeroStanza) throws SQLException{
		
		ArrayList<Periodo> p= new ArrayList<Periodo>();
		
		p=(ArrayList<Periodo>)this.getPeriodiByStanza(numeroStanza);
	boolean ret=false;
	for(Periodo a : p ) {
		if(dataInizio.isAfter(a.getDataFine()) || (dataInizio.isBefore(a.getDataInizio()) && dataFine.isBefore(a.getDataInizio())))
				ret = true;
	}
	
	return ret;
	}

	@Override
	public void controlloDisponibilitaQuotidiana(List<Stanza> listaStanze) throws SQLException {
	
		String query="select * from stanza s left join prenotazione p on s.numero_stanza=p.numero_stanza";
		prepared=connection.prepareStatement(query);
		ResultSet rs= prepared.executeQuery();
			
		while(rs.next()) {	
			
		for(Stanza s : listaStanze)	{
			
		if(s.getNumeroStanza()==rs.getInt("numero_stanza")) {
			
		if(rs.getDate("data_Inizio")==null)
			System.out.println("la stanza"+ rs.getInt("numero_stanza")+ " � disponibile");	
		
		else if (LocalDate.now().isBefore(rs.getDate("data_Inizio").toLocalDate()))	
			System.out.println("la stanza"+ rs.getInt("numero_stanza")+ " � disponibile");	
		}
		}
		}
		close();
	

		
	}


}
