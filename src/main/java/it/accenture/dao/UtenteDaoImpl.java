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
//jhhjjk
public class UtenteDaoImpl implements UtenteDao {

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	ResultSet rs=null;

	public UtenteDaoImpl() throws ConnessioneException {
		connection = SingletonConnection.getInstance();
	}

	@Override
	public void insertUtente(Utente utente) throws DAOException {
		String query = "insert into utente (nome,username,password)"
				+ " values ( ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getUsername());
			prepared.setString(3, utente.getPassword());
			prepared.executeUpdate();
			ResultSet rs = prepared.getGeneratedKeys();
			if (rs.next()) {
				System.out.println("Auto Generated Primary Key " + rs.getInt(1));
				utente.setId(rs.getInt(1));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DAOException(e.getMessage());
		}


	}

	@Override
	public Utente getByUsernameAndPassword(String username, String password) throws ConnessioneException {

		String query= "select * from Utente where username=? and password=?";
		Utente u=new Utente();


		try {
			connection= SingletonConnection.getInstance();
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setString(1, username);
			prepared.setString(2, password);
			ResultSet rs = prepared.executeQuery();

			while (rs.next()) {
				u.setId(rs.getInt("idUtente"));
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("pwd"));
				u.setNome(rs.getString("nome"));

			}
			return u;

		}catch (SQLException e) {
			e.printStackTrace();

		}catch(NullPointerException e) {
			e.printStackTrace();

		}finally {
			if(prepared!=null)
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
			if(connection!=null)
				try {
					connection.close();

				}catch (SQLException e) {
					e.printStackTrace();
				}

		}
		return u;	
	}





	@Override
	public void updateUtente(Utente utente) throws ConnessioneException {
		String query="update Utente set password=?,nome=?, where username=? and idUtente=?";
		try {
			connection= SingletonConnection.getInstance();
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setString(1, utente.getPassword());
			prepared.setString(2, utente.getNome());
			prepared.setString(3, utente.getUsername());
			prepared.setInt(4, utente.getId());
			ResultSet rs = prepared.executeQuery();
			prepared.executeUpdate();
			System.out.println("profilo aggiornato");

		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(prepared!=null)
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
			if(connection!=null)
				try {
					connection.close();

				}catch (SQLException e) {
					e.printStackTrace();
				}
		}

	}

	@Override
	public void deleteteUtenteById(int idutente) throws ConnessioneException {
		String query="delete from Utente where idUtente=?";
		try {
			connection= SingletonConnection.getInstance();
			prepared = connection.prepareStatement(query,prepared.RETURN_GENERATED_KEYS);
			prepared.setInt(1, idutente);
			ResultSet rs = prepared.executeQuery();
			prepared.executeUpdate();

		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if(prepared!=null)
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
			if(connection!=null)
				try {
					connection.close();

				}catch (SQLException e) {
					e.printStackTrace();
				}
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


		}

	}
}	

