package cookie;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CookieOrnek")
public class CookieOrnek extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		Cookie kurabiye1 = new Cookie("isim", "halilAydin");
		
		kurabiye1.setMaxAge(10);
		
		response.addCookie(kurabiye1);
		
		
		//ekleme yöntem 2
		response.addHeader("Set-Cookie", "isim2=Ramazan Bayram");
		
		
		Cookie[] kurabiyeler = request.getCookies();
		
		if(kurabiyeler!=null)
		{
			for (Cookie cookie : kurabiyeler) {
				System.out.println(cookie.getName()+" : "+cookie.getValue());
			}
		}
		
		
		
	}

}
