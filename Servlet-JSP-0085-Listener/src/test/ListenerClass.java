package test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ListenerClass implements ServletContextListener{

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		//System.out.println("-+-ServletContextListener - contextInitialized Metodu Çalýþtý : "+sce);
		
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
		//System.out.println("-+-ServletContextListener - contextDestroyed Metodu Çalýþtý : "+sce);
		
	}
	
	/*
	 * web.xml eklemeyapýldý
	 */
}
