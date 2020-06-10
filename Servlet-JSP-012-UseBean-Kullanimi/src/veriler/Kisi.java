package veriler;

public class Kisi {

	private String ad;
	private String soyad;
	private int yas;
		
	public Kisi() {
		
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
	public int getYas() {
		return yas;
	}
	public void setYas(int yas) {
		this.yas = yas;
	}


	@Override
	public String toString() {
		return "ad = " + ad + 
				"\n soyad = " + soyad +
				"\n yas = " + yas;
	}
	
	
	
}
