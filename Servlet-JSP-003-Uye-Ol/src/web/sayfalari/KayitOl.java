package web.sayfalari;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import veri.Kisi;


@WebServlet({ "/KayitOl", "/kayit" })
public class KayitOl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public KayitOl() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		request.setAttribute("hata_ad", false);
		request.setAttribute("hata_soyad", false);
		request.setAttribute("hata_yas", false);
		request.setAttribute("basarili", true);
		kontrol(request,response);
		
		
		
		RequestDispatcher kayit = request.getRequestDispatcher("UyeOl.jsp");
		kayit.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void kontrol(HttpServletRequest request, HttpServletResponse response)
	{
		String ad = request.getParameter("firstname");
		String soyad = request.getParameter("lastname");
		String cinsiyet = request.getParameter("sex");
		String yas = request.getParameter("age");
		
		
		//ad
		if(ad==null)
		{
			//ilk çalýþtýðýnda deðer olmadýgý için null
			request.setAttribute("basarili", false);
		}
		else if (ad.trim().length()==0)
		{
			request.setAttribute("hata_ad", true);
			request.setAttribute("basarili", false);
		}
		else
		{
			request.setAttribute("veri_ad", ad);
		}
		
		//soyad
		if(soyad==null)
		{
			//ilk çalýþtýðýnda deðer olmadýgý için null
			request.setAttribute("basarili", false);
		}
		else if (soyad.trim().length()==0)
		{
			request.setAttribute("hata_soyad", true);
			request.setAttribute("basarili", false);
		}
		else
		{
			request.setAttribute("veri_soyad", soyad);
		}
		
		//yas
		if(yas==null)
		{
			//ilk çalýþtýðýnda deðer olmadýgý için null
			request.setAttribute("basarili", false);
		}
		else if (yas.trim().length()==0||sayiKontrol(yas.trim()))
		{
			request.setAttribute("hata_yas", true);
			request.setAttribute("basarili", false);
		}
		else
		{
			request.setAttribute("veri_yas", yas);
		}
		
		if((boolean) request.getAttribute("basarili"))
		{
			veri.Kisi yeniKayit = new Kisi();
			
			yeniKayit.setAd(ad);
			yeniKayit.setSoyad(soyad);
			yeniKayit.setCinsiyet(cinsiyet.trim().equals("1")?"Erkek":"Kadýn");
			yeniKayit.setYas(Integer.parseInt(yas.trim()));
			
			System.out.println(yeniKayit.toString());
			
		}
		
	}
	
	boolean sayiKontrol(String deger)
	{
		try {
			int sayi = Integer.parseInt(deger);
			if(sayi<=0)
				return true;
			return false;
		} catch (Exception e) {
			
		}
		return true;
	}

}
