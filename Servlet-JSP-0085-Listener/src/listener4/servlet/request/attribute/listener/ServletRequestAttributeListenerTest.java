package listener4.servlet.request.attribute.listener;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ServletRequestAttributeListenerTest")
public class ServletRequestAttributeListenerTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("adiniz", "hakan");
		request.setAttribute("adiniz", "Murat");
		request.removeAttribute("adiniz");
	}

}
