package tooltwist.employeeSystem.requestHandlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import tooltwist.wbd.WbdRequestHandler;

import com.dinaa.data.XData;
import com.dinaa.ui.UiModuleException;
import com.dinaa.ui.UimHelper;
import com.dinaa.xpc.Xpc;

/**
 * Request handler "loginForm" - Login Form Request Handler
 * 
 * This handler can be called from a client browser before control is passed to
 * a normal navpoint. To call it, add this parameter to a normal ToolTwist URL:
 * 
 * op=employeeSystem_widgets.navBar.loginForm
 * 
 * After this method is called, the requested navpoint will be displayed in the
 * usual manner. To pass control to a different navpoint, use
 * RoutingUIM.gotoNavpoint(), and then return true.
 * 
 * @author ?
 */
public class LoginFormRequestHandler extends WbdRequestHandler {

	@Override
	public boolean handler(UimHelper uh, String widgetId, String method) throws UiModuleException, ServletException, IOException {
		boolean logout = Boolean.parseBoolean(uh.getRequestValue("logout"));

		if (logout) {
			HttpSession session = uh.getRequest().getSession();
			session.setAttribute("loggedIn", null);
			session.setAttribute("user", null);
		} else {
			String employeeNumber = uh.getRequestValue("employeeNumber");
			String password = uh.getRequestValue("password");

			try {
				Xpc xpc = uh.getXpc();
				xpc.start("phinza.D.employeeSystemUser", "select");
				xpc.attrib("employeeNumber", employeeNumber);
				xpc.attrib("password", password);
				XData data = xpc.run();

				if ("select".equals(data.getRootType())) {
					String employeeId = data.getText("/select/employeeSystemUser/employeeId");
					xpc.start("phinza.D.employee", "select");
					xpc.attrib("employeeId", employeeId);
					data = xpc.run();
					if ("select".equals(data.getRootType())) {
						HttpSession session = uh.getRequest().getSession();
						session.setAttribute("loggedIn", true);
						session.setAttribute("user", data.getText("/select/employee/firstName"));
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}
