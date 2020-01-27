package exceptions;

public class ConnessioneException extends Exception {
	
	public ConnessioneException() {
		super("PROBLEMI DI CONNESSIONE");
	}

	public ConnessioneException(String message) {
		super(message);	
	}
}
