package tooltwist.employeeSystem.interceptors;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import tooltwist.ecommerce.RoutingUIM;
import tooltwist.ecommerce.WbdInterceptor;

import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;

/*
 * Interceptor login - Login Interceptor.
 * 
 * This class intercepts a request sent to a ToolTwist generated site. Interceptors
 * are called before any other processing, and allow a chance to perform site-wide
 * operations - for example, login redirection, passing parameters from page to page
 * by automatically appending them to URLs, or detecting the browser device.  
 */
public class LoginInterceptor extends WbdInterceptor
{

	@Override
	public boolean intercept(UimHelper uh, String navpoint) throws UiModuleException, ServletException, IOException
	{
		
		HttpServletRequest request = uh.getRequest();
		HttpSession session = request.getSession();
		Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
		if(loggedIn == null || !loggedIn){
			String alternateNavpoint = "employeeSystem-home";
			RoutingUIM.gotoNavpoint(uh, alternateNavpoint);
			return true;
		}
		return false;
	}

}
