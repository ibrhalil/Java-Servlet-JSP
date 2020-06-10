package veri;

import java.io.Serializable;

public class Kisi implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String ad;
	private String soyad;
	private String cinsiyet;
	private int yas;
		
	public Kisi() {
		this.ad="";
		this.soyad="";
		this.cinsiyet="";
		this.yas=0;
	}
	
	public String getAd() {
		return ad;
	}
	public void setAd(String ad) {
		this.ad = ad;
	}
	public String getSoyad() {
		return soyad;
	}
	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}
	public String getCinsiyet() {
		return cinsiyet;
	}
	public void setCinsiyet(String cinsiyet) {
		this.cinsiyet = cinsiyet;
	}
	public int getYas() {
		return yas;
	}
	public void setYas(int yas) {
		this.yas = yas;
	}

	@Override
	public String toString() {
		return "Kisi [ad=" + ad + ", soyad=" + soyad + ", cinsiyet=" + cinsiyet + ", yas=" + yas + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ad == null) ? 0 : ad.hashCode());
		result = prime * result + ((cinsiyet == null) ? 0 : cinsiyet.hashCode());
		result = prime * result + ((soyad == null) ? 0 : soyad.hashCode());
		result = prime * result + yas;
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
		Kisi other = (Kisi) obj;
		if (ad == null) {
			if (other.ad != null)
				return false;
		} else if (!ad.equals(other.ad))
			return false;
		if (cinsiyet == null) {
			if (other.cinsiyet != null)
				return false;
		} else if (!cinsiyet.equals(other.cinsiyet))
			return false;
		if (soyad == null) {
			if (other.soyad != null)
				return false;
		} else if (!soyad.equals(other.soyad))
			return false;
		if (yas != other.yas)
			return false;
		return true;
	}
	
	
	

}
