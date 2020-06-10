package paket01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//>>>>>>>>>>	0	<<<<<<<<<<
/*
 * Servletler Bir Sunucuda çalýþmak zorundadýr.
 * Projemizi oluþturduktan sonra bir sunucu ile birlikte çalýþtýrýrýz.
 */

//>>>>>>>>>>	3	<<<<<<<<<<
/*
 * ' @WebServlet ' Annottunu kullanarak bu sýnýfýn hangi URL adresini kullanýlýnca çalýþacaðýný belirtiriz.
 * 2. bir yöntem de : web.xml tanýmlama yaparakta kullanabiliriz.
 */
@WebServlet("/Servlet01")
public class BasitBirJavaSinifi extends HttpServlet
{
	//>>>>>>>>>>	1	<<<<<<<<<<
	/*
	 * Servlet HTTP protokolünü kullanabilen bir java sýnýfýdýr.
	 * Bir Java sýnýfýnýn SERVLET olabilmesi için ' HttpServlet ' sýnýfýný miras almasý gerekmektedir.
	 * Artýk sýnýfýmýz http protokollerini anlayabilecektir. Bunun için ilgili metotlarý Override etmesi gerekmektedir.
	 */
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		//>>>>>>>>>>	2	<<<<<<<<<<
		/*
		 * Bu metot kullanýcýdan gelen GET istekleri alabildiðimiz ve karþý cevap gönderebileceðimiz bir metotdur.
		 */
		PrintWriter yaz = resp.getWriter();
		yaz.append("Merhaba Dünya...");
		//>>>>>>>>>>	4	<<<<<<<<<<
		/*
		 * PrintWriter sýnýfýndan bir nesne oluþturuyoruz.
		 * response daki getWrite metodundan çaðrýlmýþtýr.
		 */
		
	}
}
