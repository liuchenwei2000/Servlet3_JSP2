/**
 * 
 */
package fragment;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Listener1 implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("this listener is for module1");
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("this listener is for module1");
	}
}
