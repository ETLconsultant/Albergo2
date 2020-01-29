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
	private ResultSet resultset;

	public UtenteDaoImpl() {
		connection = SingletonConnection.getInstance();
	}
	

	@Override
	public void insertUtente(Utente utente) throws DAOException {
		String query = "insert into utente (nome,username,password)"
				+ " values ( ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query, prepared.RETURN_GENERATED_KEYS);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getUsername());
			prepared.setString(3, utente.getPassword());
			int numero = prepared.executeUpdate();
			resultset = prepared.getGeneratedKeys();
			if (resultset.next()) {
				System.out.println("Auto Generated Primary Key " + resultset.getInt(1));
				utente.setId(resultset.getInt(1));
			}
			
			if(numero>0) {
				System.out.println("Utente inserito correttamente");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
// va bene ma posso inserire senza password

	}

	@Override
	public Utente getByUsernameAndPassword(String username, String password) {

		String query= "select * from utente where username=? and password=?";
		Utente u=new Utente();

// se due utenti hanno stesso username e stessa password esplode
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, username);
			prepared.setString(2, password);
			
			resultset = prepared.executeQuery();

			while (resultset.next()) {
				u.setId(resultset.getInt("id_utente"));
				u.setUsername(resultset.getString("username"));
				u.setPassword(resultset.getString("password"));
				u.setNome(resultset.getString("nome"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return u;	
	}

	@Override
	public void updateUtente(Utente utente) {
		//non updata ma ne crea uno nuovo
		String query="update utente set password=?,nome=? where username=? and id_utente=?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, utente.getPassword());
			prepared.setString(2, utente.getNome());
			prepared.setString(3, utente.getUsername());
			prepared.setInt(4, utente.getId());
			
			int numeroRighe = prepared.executeUpdate();
			
			if(numeroRighe>0) {
				System.out.println("Utente aggiornato");
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

	}

	@Override
	public void deleteUtenteById(int idUtente) {
		String query="delete from utente where id_utente=?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, idUtente);
			
			int numeroRighe = prepared.executeUpdate();
			if(numeroRighe>0) {
				System.out.println("Utente cancellato");
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

