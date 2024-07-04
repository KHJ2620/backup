package listener;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import model.Rank;

public class CustomApplicationListener implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("contextInitialized");
		
		ServletContext application = sce.getServletContext();
		application.setAttribute("ranks", new ArrayList<Rank>());
		
	}
	
	
	

}
