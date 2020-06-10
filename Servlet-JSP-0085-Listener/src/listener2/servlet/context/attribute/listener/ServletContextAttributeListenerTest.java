package listener2.servlet.context.attribute.listener;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletContextAttributeListenerTest")
public class ServletContextAttributeListenerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


			
		//Ekleme
		getServletContext().setAttribute("name", "ibrahim");
		
		//değiştirme
		getServletContext().setAttribute("name", "halil");
		
		//silme
		getServletContext().removeAttribute("name");
	}

}
