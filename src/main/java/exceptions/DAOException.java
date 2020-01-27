package exceptions;

public class DAOException extends Exception {
	
	public DAOException() {
		super("Errore nel DAO.");
	}

	public DAOException(String message) {
		super(message);
	}

	public DAOException(String message, Throwable cause) {
		super(message, cause);
	}

}
