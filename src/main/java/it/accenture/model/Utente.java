package it.accenture.model;

import java.io.Serializable;

public class Utente implements Serializable {

	private int idUtente;
	private String nome;
	private String cognome;
	private String username;
	private String password;
	
	
	
	public Utente() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return super.hashCode();
	}



	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		return super.equals(obj);
	}



	public int getIdUtente() {
		return idUtente;
	}



	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}


	public String getNome() {
		return nome;
	}



	public void setNome(String nome) {
		this.nome = nome;
	}



	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}


	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}


	@Override
	public String toString() {
		return "Utente [idUtente=" + idUtente + ", nome=" + nome + ", cognome=" + cognome + ", username=" + username
				+ ", password=" + password + "]";
	}





	public Utente(int idUtente, String nome, String cognome, String username, String password) {
		super();
		this.idUtente = idUtente;
		this.nome = nome;
		this.cognome = cognome;
		this.username = username;
		this.password = password;
	}
}
	

	