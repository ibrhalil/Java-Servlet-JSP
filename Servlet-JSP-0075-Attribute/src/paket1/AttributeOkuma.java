package paket1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AttributeOkuma")
public class AttributeOkuma extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter yaz = response.getWriter();
		
		//context -- farklý tarayýcýlarda da bu deðere bulaþýlabilir...
		yaz.println(getServletContext().getAttribute("ayar1"));
		yaz.println(getServletContext().getAttribute("ayar2"));
		
		
		//session -- her tarayýcýda farklý bir thrade mýþ gibi
		yaz.println(request.getSession().getAttribute("ayar3"));
		yaz.println(request.getSession().getAttribute("ayar4"));
		
		//request -- istek zamanýnda oluþur ve hemen silinir
		yaz.println(request.getAttribute("ayar5"));
		yaz.println(request.getAttribute("ayar6"));
		
		
		
		yaz.close();
	}

}
