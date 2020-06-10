package dosya.indirme;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RarIndir")
public class RarIndir extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//indirilecek dosya t�r�ne g�re MIME type se�ilir
		response.setContentType("application/x-rar-compressed");
		
		//indirilecek dosyan�n ad�n� respone Header vermeliyiz
		response.setHeader("Content-Disposition", "attachment;filename=.rar uzant�l� dosya ad�");
		
		/*
		 * https://www.freeformatter.com/mime-types-list.html
		 */
		
		//�imdi bu dosyay� okumal�y�z
		InputStream is = getServletContext().getResourceAsStream("WebContent i�eisindeki .rar uzant�l� dosya");
		
		int oku;
		byte[] bytes = new byte[1024];
		ServletOutputStream sos = response.getOutputStream();
		
		while((oku = is.read(bytes))!=-1)
		{
			sos.write(bytes, 0, oku);
		}
		sos.close();
		
		
	}

	
}
