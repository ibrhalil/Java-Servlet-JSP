package rewriting;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SessionURL")
public class SessionURL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/*
	 * Bazý kullanýcýlar tarayýcýlarýnda cookie leri kapattýgý için session id tanýmlanamamaktadýr
	 * bunun içinde session id url ile taþýyacagýz
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		session.setAttribute("name", "Halil Ýbrahim");
		
		//yapýlan bu deðiþiklikle çerezleri kapatmýþ olsada yönlendirilen sayfaya session id gitmiþ olur
		String url = "Rewriting;jsessionid="+request.getSession().getId();
		
		
		PrintWriter yaz = response.getWriter();
		
		yaz.println("<html>");
		yaz.println("<body>");
		yaz.println("<a href=\""+url+"\">Yönlendir</a>");
		yaz.println("<br>Session Id : "+session.getId());
		yaz.println("</body>");
		yaz.println("</html>");
		
		
		yaz.close();
	}

}
