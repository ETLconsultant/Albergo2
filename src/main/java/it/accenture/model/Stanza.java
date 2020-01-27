package it.accenture.model;

public class Stanza {

	private int numeroStanza;
	private TipoStanza tipoStanza;
	private int postiLetto;
	private double prezzoNotte;
	private boolean disponibile;

	public int getNumeroStanza() {
		return numeroStanza;
	}

	public void setNumeroStanza(int numeroStanza) {
		this.numeroStanza = numeroStanza;
	}

	public TipoStanza getTipoStanza() {
		return tipoStanza;
	}

	public void setTipoStanza(TipoStanza tipoStanza) {
		this.tipoStanza = tipoStanza;
	}

	public int getPostiLetto() {
		return postiLetto;
	}

	public void setPostiLetto(int postiLetto) {
		this.postiLetto = postiLetto;
	}

	public double getPrezzoNotte() {
		return prezzoNotte;
	}

	public void setPrezzoNotte(double prezzoNotte) {
		this.prezzoNotte = prezzoNotte;
	}

	public boolean isDisponibile() {
		return disponibile;
	}

	public void setDisponibile(boolean disponibile) {
		this.disponibile = disponibile;
	}

	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (disponibile ? 1231 : 1237);
		result = prime * result + numeroStanza;
		result = prime * result + postiLetto;
		long temp;
		temp = Double.doubleToLongBits(prezzoNotte);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((tipoStanza == null) ? 0 : tipoStanza.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Stanza other = (Stanza) obj;
		if (disponibile != other.disponibile)
			return false;
		if (numeroStanza != other.numeroStanza)
			return false;
		if (postiLetto != other.postiLetto)
			return false;
		if (Double.doubleToLongBits(prezzoNotte) != Double.doubleToLongBits(other.prezzoNotte))
			return false;
		if (tipoStanza != other.tipoStanza)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Stanza [numeroStanza=" + numeroStanza + ", tipoStanza=" + tipoStanza + ", postiLetto=" + postiLetto
				+ ", prezzoNotte=" + prezzoNotte + ", disponibile=" + disponibile + "]";
	}

}
