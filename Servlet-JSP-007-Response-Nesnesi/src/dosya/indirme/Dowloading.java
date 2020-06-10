package dosya.indirme;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Dowloading")
public class Dowloading extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//indirilecek dosya türüne göre MIME type seçilir
		response.setContentType("image/png");
		
		//indirilecek dosyanýn adýný respone Header vermeliyiz
		response.setHeader("Content-Disposition", "attachment;filename=backend.png");
		
		/*
		 * https://www.freeformatter.com/mime-types-list.html
		 */
		
		//þimdi bu dosyayý okumalýyýz
		InputStream is = getServletContext().getResourceAsStream("/backend.png");
		
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
