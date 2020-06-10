package paket1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestOrnek
 */
@WebServlet( name = "RequestOrnek", urlPatterns = {"/requestD"})
public class RequestOrnek extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter yaz = response.getWriter();
		
		yaz.write(request.getParameter("uname")+"<br>");
		yaz.write(request.getParameter("psw")+"<br>");
		String[] degerler = request.getParameterValues("remember");
		for (int i = 0; i < degerler.length; i++) {
			yaz.write(degerler[i]+"<br>");
		}
		
		System.out.println(request.getLocalAddr());
		System.out.println("istek geldii.");
	}

}
