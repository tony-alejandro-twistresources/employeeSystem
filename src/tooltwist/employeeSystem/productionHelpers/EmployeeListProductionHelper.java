package tooltwist.employeeSystem.productionHelpers;

import java.util.Properties;

import tooltwist.wbd.WbdProductionHelper;

import com.dinaa.data.XData;
import com.dinaa.ui.UimData;
import com.dinaa.xpc.Xpc;

public class EmployeeListProductionHelper extends WbdProductionHelper {

	public EmployeeListProductionHelper(Properties prop) {
		super(prop);
	}

	@Override
	public XData preFetch(UimData ud) throws Exception {
		Xpc xpc = ud.getXpc();

		xpc.start("phinza.D.employee", "select");
		XData data = xpc.run();

		return data;
	}
}
