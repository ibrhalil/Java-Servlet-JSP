package servlet.context.ornek;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DosyaOkuma",urlPatterns = {"/dosyaOkuma"})
public class ServletContextDosyaOkuma extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		ServletContext context = getServletContext();
		

		/*
		 * Properties okuma
		 */
		InputStream properStream = context.getResourceAsStream("/WEB-INF/adSoyad.properties");
		
		Properties properties = new Properties();
		properties.load(properStream);
		
		
		/*
		PrintWriter yaz = resp.getWriter();
		
		yaz.append(properties.getProperty("name")).append(properties.getProperty("surname"));
		
		yaz.close();*/
		
		/*
		 * txt okuma
		 */
		InputStream txtStream = context.getResourceAsStream("/WEB-INF/metin.txt");
		
		ServletOutputStream sos = resp.getOutputStream();
		int varmi;
		while((varmi = txtStream.read())!=-1)
		{
			sos.write(varmi);
		}
		sos.close();
		
		
		System.out.println(context.getRealPath("/WEB-INF/metin.txt"));
		System.out.println(context.getContextPath());
		System.out.println(context.getServletContextName());
	}
}
