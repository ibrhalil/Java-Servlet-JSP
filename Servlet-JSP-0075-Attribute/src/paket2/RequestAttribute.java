package paket2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestAttribute")
public class RequestAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("isim", "halil");
		request.setAttribute("cinsiyet", "erkek");
		
		/*
		 * RequestDispatcher rd = request.getRequestDispatcher("request.jsp");
		 * 
		 * veya
		 * 
		 * (yönlendilecek olan jsp yolunu girmek)
		 */
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/request.jsp");
		rd.forward(request, response);
	}

}
