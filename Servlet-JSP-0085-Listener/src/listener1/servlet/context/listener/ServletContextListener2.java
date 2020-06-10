package listener1.servlet.context.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.swing.JOptionPane;

//web.xml iþaretleme
public class ServletContextListener2 implements ServletContextListener {



    public void contextDestroyed(ServletContextEvent sce)  { 
    	
    	JOptionPane.showMessageDialog(null, "ServletContextListener2 Sýnýfýnda - contextDestroyed Metodu Çalýþtý");
    }


    public void contextInitialized(ServletContextEvent sce)  { 
    	
    	JOptionPane.showMessageDialog(null, "ServletContextListener2 Sýnýfýnda - contextInitialized Metodu Çalýþtý");
    }
	
}
