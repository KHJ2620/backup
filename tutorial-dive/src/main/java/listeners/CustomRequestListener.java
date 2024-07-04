package listeners;

import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;

public class CustomRequestListener implements ServletRequestListener{
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println();
	}
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println();
	}

}
