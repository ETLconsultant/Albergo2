package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



import exceptions.ConnessioneException;
import exceptions.DAOException;
import it.accenture.model.Utente;
import java.sql.ResultSet;

public class UtenteDaoImpl implements UtenteDao {
	
	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	
	

	public boolean   loginControl(String username, String passwordInserita) throws SQLException {
	
	
		String query="select password from utente where username = ?";
		
			
			 prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			 prepared = connection.prepareStatement(query);
			 prepared.setString(1, username);
//			 ResultSet rs = prepared.getGeneratedKeys();
			 ResultSet rs =  prepared.executeQuery();
			 
			 rs.next();
			 
			 System.out.println(username + passwordInserita);
			 
			 System.out.println(rs.getString("password"));
			 
			 if(passwordInserita.equals(rs.getString("password")) ) {
			
			 return true;
			 
			 }
			 else return false;
	}
	public UtenteDaoImpl() {
		try {
			connection = SingletonConnection.getInstance();
		} catch (ConnessioneException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void insertUtente(Utente utente) throws DAOException, SQLException {
		String query = "insert into utente (nome,cognome,username,password)"
				+ " values ( ?, ?, ?,?)";

			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getCognome());
			prepared.setString(3, utente.getUsername());
			prepared.setString(4, utente.getPassword());
			prepared.executeUpdate();
			ResultSet rs = prepared.getGeneratedKeys();
			if (rs.next()) {
				System.out.println("Auto Generated Primary Key " + rs.getInt(1));
				utente.setIdUtente(rs.getInt(1));
			}		
		
	}



	@Override
	public Utente getByUsernameAndPassword(String username, String password) throws SQLException {
		
		String query ="select * from utente where username=? and password=?";
		Utente utente = new Utente();

			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			 
		
			 prepared.setString(1, username);
			 prepared.setString(2, password);
			 
			 ResultSet rs = prepared.getGeneratedKeys();
			 rs= prepared.executeQuery();
		
			 
			 System.out.println(prepared + " resultset: " + rs);
			 while(rs.next()) {
			 
			 utente.setIdUtente(rs.getInt("id_utente"));
			 utente.setNome(rs.getString("nome"));
			 utente.setCognome(rs.getString("cognome"));
			 utente.setUsername(rs.getString("username"));
			 utente.setPassword(rs.getString("password"));
		

			 }
			 System.out.println(utente + "prima del close");
			 close();	
			 System.out.println(utente);
			 return utente;
			 
			

		
	}
		
		

	
	

	@Override
	public void updateUtente(Utente utente) throws SQLException {
		String query="update utente set nome = ? , cognome = ?, username = ?, password = ? where id_utente=?";
	
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			 
			
			 prepared.setString(1, utente.getNome());
			 prepared.setString(2, utente.getCognome());
			 prepared.setString(3, utente.getUsername());
			 prepared.setString(4, utente.getPassword());
			 prepared.setInt(5, utente.getIdUtente());
			 prepared.executeUpdate();
			 ResultSet rs = prepared.getGeneratedKeys();
			
	
			 close();			 
		 
	}
	

	@Override
	public void deleteteUtenteById(int idUtente) throws SQLException {

		String query = "delete from utente where id_utente = ?";
		
			
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			 prepared.setInt(1, idUtente);
			 
			int num = prepared.executeUpdate();
			 
		
			if(num>0) {
				System.out.println("DAO delete done");
			}
			close();
	
	}
	
	@Override
	public void close() {
		 if(prepared != null)
			 try {
				 prepared.close();
			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		 if(prepared != null)
			 try {
				 prepared.close();
			 } catch (SQLException e) {
				 e.printStackTrace();
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e1) {
				e.printStackTrace();
			}
		

     }
		
	}
	}
	}	
	
