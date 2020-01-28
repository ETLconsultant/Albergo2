package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Stanza;
import it.accenture.model.TipoStanza;



public class StanzaDaoImpl implements StanzaDao {
	
	private Connection connection;
	private Statement statement;
	private PreparedStatement prepared;

	
	public StanzaDaoImpl() {
		try {
			connection = SingletonConnection.getInstance();
		} catch (ConnessioneException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<Stanza> getAll() throws DAOException, ConnessioneException, SQLException {
		ArrayList<Stanza> s = new ArrayList<Stanza>();
		String query = "select * from stanza ";
//			connection=SingletonConnection.getInstance();
			prepared=connection.prepareStatement(query);
			ResultSet rs =prepared.executeQuery();
			
			while (rs.next()) {
				Stanza s1 = new Stanza();
				s1.setNumeroStanza(rs.getInt("numero_stanza"));
				s1.setTipoStanza(TipoStanza.valueOf(rs.getString("tipo_stanza")));
				s1.setPostiLetto(rs.getInt("posti_letto"));
				s1.setPrezzoNotte(rs.getDouble("prezzo_notte"));
				s1.setDisponibile(rs.getBoolean("disponibile"));
				
				s.add(s1);
			}
			close();
	  
		
	return s;
	}
	
	@Override
	public void updateDisponibile(boolean disponibile, int numeroStanza) throws DAOException, ConnessioneException, SQLException {
		String query = "update stanza set disponibile=?  where numero_stanza=?";
		
//			connection=SingletonConnection.getInstance();
			prepared=connection.prepareStatement(query);
			
			prepared.setBoolean(1, disponibile);
			prepared.setInt(2, numeroStanza);
			prepared.executeUpdate();
			
		close();
		
	}

	@Override
	public Stanza getStanzaById(int numeroStanza) throws DAOException, ConnessioneException, SQLException {
		Stanza s = new Stanza();
		String query = "select * from stanza where numero_stanza=? ";
		
//			connection=SingletonConnection.getInstance();
			prepared=connection.prepareStatement(query);
			prepared.setInt(1, numeroStanza);
			ResultSet rs =prepared.executeQuery();
			
			
			
			while (rs.next()) {
			s.setNumeroStanza(rs.getInt("numero_stanza"));
			s.setTipoStanza(TipoStanza.valueOf(rs.getString("tipo_stanza")));
			s.setPostiLetto(rs.getInt("posti_letto"));
			s.setPrezzoNotte(rs.getDouble("prezzo_notte"));
			s.setDisponibile(rs.getBoolean("disponibile"));
			
			}
			
			close();
			return s;
		
		
	}

	@Override
	public void close() {
		if (prepared!=null)
			try {
				prepared.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
	    }
	}


	

}
