package listener5.http.session.listener;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HttpSessionListenerTest
 */
@WebServlet("/HttpSessionListenerTest")
public class HttpSessionListenerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//session nesnesi oluþturuldu
		HttpSession session = request.getSession();
		
		//session nesnesi silindi
		session.invalidate();
		
	}



}
