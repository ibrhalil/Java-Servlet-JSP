package listener1.servlet.context.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.swing.JOptionPane;

//iþaretleme ile

@WebListener
public class ServletContextListener1 implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		// Ýlk Baþlatýldýðýnda çalýçan metot
		
		//JOptionPane.showMessageDialog(null, "ServletContextListener1 Sýnýfýnda - contextInitialized Metodu Çalýþtý");
		
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
		//JOptionPane.showMessageDialog(null, "ServletContextListener1 Sýnýfýnda - contextDestroyed Metodu Çalýþtý");
		
		// Kapatýldýðýnda Çalýþan metot
	}
}
