package test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ListenerTest
 *
 */
@WebListener
public class ListenerTest implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ListenerTest() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         //System.out.println("@WebListener iþaretlenmiþ ListenerTest contextDestroyed");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	//System.out.println("@WebListener iþaretlenmiþ ListenerTest contextInitialized");
    }
	
}
