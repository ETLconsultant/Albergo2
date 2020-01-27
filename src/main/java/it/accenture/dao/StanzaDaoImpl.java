package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import exceptions.ConnessioneException;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;



public class StanzaDaoImpl implements StanzaDao {
	
	private Connection connection;
	private PreparedStatement prepared;
	private ResultSet resultset;
	
	public StanzaDaoImpl() throws ConnessioneException {
		connection = SingletonConnection.getInstance();
	}

	@Override	//Visualizzo tutte le stanze
	public ArrayList<Stanza> getAll() {
		// TODO Auto-generated method stub		
		ArrayList<Stanza> listaStanze = new ArrayList<Stanza>();
		
		String query = "select * from stanza";
		try {
			
			prepared = connection.prepareStatement(query);
			resultset = prepared.executeQuery(); 
			
			while(resultset.next()) {
				Stanza stanza = new Stanza();
				stanza.setNumeroStanza(resultset.getInt("numero_stanza"));
				stanza.setTipoStanza(TipoStanza.valueOf(resultset.getString("tipo_stanza")));
				stanza.setPostiLetto(resultset.getInt("posti_letto"));
				stanza.setPrezzoNotte(resultset.getDouble("prezzo_notte"));
				stanza.setDisponibile(resultset.getBoolean("disponibile"));
				listaStanze.add(stanza);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return listaStanze;
	}

	@Override	//Aggiornamento disponibilità stanza per ogni singola stanza
	public void updateDisponibile(boolean disponibile, int numeroStanza) {
		// TODO Auto-generated method stub
		String query = "update stanza set disponibile=? where numero_stanza=?";
		
		try {
			prepared = connection.prepareStatement(query);
			prepared.setBoolean(1, disponibile);
			prepared.setInt(2, numeroStanza);
			
			int numeroRighe = prepared.executeUpdate(); 
			if(numeroRighe>0) {
				System.out.println("Aggiornameto avvenuto con successo");
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		finally {
			close();
		}
	}

	@Override	//Visualizzo la singola stanza dall'id
	public Stanza getStanzaById(int numeroStanza) {
		// TODO Auto-generated method stub
		Stanza stanza = new Stanza();
		String query = "select * from stanza where numero_stanza = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, numeroStanza);
			
			resultset = prepared.executeQuery();
	
			while(resultset.next()) {
				stanza.setNumeroStanza(numeroStanza);
				stanza.setTipoStanza(TipoStanza.valueOf(resultset.getString("tipo_stanza")));
				stanza.setPostiLetto(resultset.getInt("posti_letto"));
				stanza.setPrezzoNotte(resultset.getDouble("prezzo_notte"));
				stanza.setDisponibile(resultset.getBoolean("disponibile"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return stanza;
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
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
