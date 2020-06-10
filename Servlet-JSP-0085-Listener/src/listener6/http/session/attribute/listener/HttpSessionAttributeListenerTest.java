package listener6.http.session.attribute.listener;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HttpSessionAttributeListenerTest
 */
@WebServlet("/HttpSessionAttributeListenerTest")
public class HttpSessionAttributeListenerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		
		session.setAttribute("deger","deenme");
		session.setAttribute("deger", "deneme");
		session.removeAttribute("deger");
		
		
		
	}

}
