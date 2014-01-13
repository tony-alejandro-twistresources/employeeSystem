<html>
<head>
<title></title>
</head>
<body>
	<%
		WbdProductionHelper helper = null;
		JspHelper jh = null;
		String snippetVar_myProperty;
		String snippetVar_thisNavpoint;
	%>
	<!--START-->
	<%@page import="tooltwist.wbd.WbdProductionHelper"%>
	<%@page import="com.dinaa.data.XData"%>
	<%@page import="tooltwist.employeeSystem.productionHelpers.NavBarProductionHelper"%>
	<%@page import="tooltwist.misc.JspHelper"%>
	<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
	<%@page import="tooltwist.ecommerce.RoutingUIM"%>
	<%
		// Get the production helper for this widget
		NavBarProductionHelper h = (NavBarProductionHelper) helper;
		XData data = h.getData(jh);
		Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
		String user = (String) session.getAttribute("user");
	%>

	<div class="navbar">
		<div class="navbar-inner">
			<a class="brand" href="%%target%%">Employee Information System</a>
			<% if(null != loggedIn && loggedIn.booleanValue() == true) { %>
				<div class="pull-right">
				<ul class="nav">
					<li><a>Welcome, <%=user%></a></li>
					<li>
						<form method="post" class="navbar-form pull-right">
							<input type="hidden" name="op" value="employeeSystem_widgets.navBar.loginForm">
							<input type="hidden" id="logout" name="logout" value="true"/>
							<button type="submit" class="btn">Logout</button>
						</form>
					</li>
				</ul>
				</div>
			<% }else{ %>
			<form method="post" class="navbar-form pull-right">
				<input type="hidden" name="op" value="employeeSystem_widgets.navBar.loginForm">
				<input type="text" id="employeeNumber" name="employeeNumber" class="span2" placeholder="Employee Number" />
				<input type="password" id="password" name="password" class="span2" placeholder="Password" />
				<button type="submit" class="btn">Submit</button>
			</form>
			<% } %>
		</div>
	</div>

	<!--END-->
</body>
</html>
