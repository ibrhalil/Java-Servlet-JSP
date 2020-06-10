package servlet_jsp_iliskilendirme;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class KisiEkle
 */
@WebServlet("/KisiEkle")
public class KisiEkle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public KisiEkle() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher goster = request.getRequestDispatcher("jspSayfa01.jsp");
		goster.forward(request, response);
		
		/*
		 * request nesnesinden 'getRequestDispatcher' metodunu kullanarak 'WebContent' de oluþturulmuþ jsp sayfasýný 'RequestDispatcher' referansýna eþitleyip
		 * servlete gelen request ve responselarý jsp sayfanýna yönlendiriyoruz.
		 */
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		
		
		String ad = request.getParameter("kisiAd");
		ad = ad.trim();	//verini baþýndaki ve sonundaki boþluðu silmektedir.
		//jsp sayfasýnda input name olrak tanýmlanmiþ degeri yazýlmalý
		
		
		request.setAttribute("gelenAdDegeri", ad);
		//gelenAdDegeri adýnda bir özellik tanýmlayýp requset nesnesine ekledik.
		
		if(ad.length()==0)
		{
			request.getRequestDispatcher("jspSayfa03.jsp").forward(request, response);
			//gelen ismi baþka bir jsp sayfanýna göndermekteyiz
		}
		else
		{
			request.getRequestDispatcher("jspSayfa02.jsp").forward(request, response);
		}
			
	}

}
