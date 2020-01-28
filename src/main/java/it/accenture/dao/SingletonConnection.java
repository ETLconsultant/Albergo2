package it.accenture.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ResourceBundle;

import exceptions.ConnessioneException;

public class SingletonConnection {
	
	private static Connection conn;
	private static ResourceBundle rb = ResourceBundle.getBundle("info");
	private static String stringConnection = rb.getString("jdbc.stringConnection");
	private static String idConnection=rb.getString("jdbc.username");
	private static String passConnection=rb.getString("jdbc.password");
	private static String driverClassName= rb.getString("driverClassName");
	
	
	private SingletonConnection() {
		
		try {
			Class.forName(driverClassName);  
			
			conn = DriverManager.getConnection(stringConnection,idConnection,passConnection);
		} catch (Exception e) {
			e.printStackTrace();			
			try {
				throw new ConnessioneException(e.getMessage());
			}
			catch(ConnessioneException e1){
				e1.getMessage();
				e1.printStackTrace();
				System.out.println("CONNESSIONE FALLITA???");
				//Eventualmente aggiungere il log???
			}
		}
	}
	
	public static Connection getInstance()/*throws ConnessioneException*/{
		
		if(conn==null)
			
			new SingletonConnection();
		
		return conn; 
	}

}
