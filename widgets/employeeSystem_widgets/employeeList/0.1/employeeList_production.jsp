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
<%@page import="com.dinaa.data.XNodes"%>
<%@page import="com.dinaa.data.XData"%>
<%@page import="tooltwist.employeeSystem.productionHelpers.EmployeeListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	EmployeeListProductionHelper h = (EmployeeListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employee");
	Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
	String user = (String) session.getAttribute("user");
%>

<% if(null != loggedIn && loggedIn.booleanValue() == true) { %>
	
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Employee Number</th>
				<th>Last name</th>
				<th>First name</th>
				<th>Middle name</th>
				<th>Position</th>
			</tr>
		</thead>
		<tbody>
			<% for(nodes.first(); nodes.next();) { %>
			<tr>
				<td>
					<a href="%%target%%?employeeId=<%= nodes.getText("employeeId") %>"><%= nodes.getText("employeeNumber") %></a>
				</td>
				<td><%= nodes.getText("lastName") %></td>
				<td><%= nodes.getText("firstName") %></td>
				<td><%= nodes.getText("middleName") %></td>
				<td><%= nodes.getText("position") %></td>
			</tr>
			<% } %>
		</tbody>
	
	</table>

<% } else { %>

	<div class="hero-unit">
	  <h1>Employee Information System</h1>
	  <p>This a sample application using ToolTwist.</p>
	</div>
	
<% } %>
<!--END-->
</body>
</html>
