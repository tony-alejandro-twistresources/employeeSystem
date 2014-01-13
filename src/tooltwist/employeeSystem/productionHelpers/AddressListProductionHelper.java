package tooltwist.employeeSystem.productionHelpers;

import java.util.Properties;

import javax.servlet.http.HttpServletRequest;

import tooltwist.misc.JspHelper;
import tooltwist.wbd.WbdProductionHelper;

import com.dinaa.data.XData;
import com.dinaa.ui.UimData;
import com.dinaa.xpc.Xpc;

public class AddressListProductionHelper extends WbdProductionHelper
{
	private String employeeId;

	public AddressListProductionHelper(Properties prop)
	{
		super(prop);
	}

	@Override
	public XData preFetch(UimData ud) throws Exception
	{
		final HttpServletRequest request = ((JspHelper) ud).getRequest();
		String employeeId = request.getParameter("employeeId");
		
		this.setEmployeeId(employeeId);
		
		Xpc xpc = ud.getXpc();

		xpc.start("phinza.D.employeeAddress", "select");
		xpc.attrib("employeeId", employeeId);
		XData data = xpc.run();

		return data;
	}
	
	public String getEmployeeId() {
		return employeeId;
	}
	
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
}
