package sendRedirect;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SendRedirect")
public class SendRedirect extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//yönlendirme
		
		//resp.sendRedirect("http://ibrhalil.com");
		
		resp.sendRedirect("yonlendirilen.html");
		
		//resp.sendRedirect("/Servlet-JSP-007-Response-Nesnesi/yonlendirilen.html");
		
	}
}
