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
<%@page import="com.dinaa.data.XNodes"%>
<%@page import="tooltwist.employeeSystem.productionHelpers.AddressListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	AddressListProductionHelper h = (AddressListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employeeAddress");
%>

<table class="table table-striped table-bordered table-hover">
	<caption>Employee Address List</caption>
	<thead>
		<tr>
			<th>Street Address</th>
			<th>City</th>
			<th>State/Province</th>
			<th>Zip Code</th>
		</tr>
	</thead>
	<tbody>
		<% for(nodes.first(); nodes.next();) { %>
		<tr>
			<td>
				<a href="%%target%%?addressId=<%= nodes.getText("addressId") %>"><%= nodes.getText("streetAddress") %></a>
			</td>
			<td><%= nodes.getText("city") %></td>
			<td><%= nodes.getText("stateProvince") %></td>
			<td><%= nodes.getText("zipcode") %></td>
		</tr>
		<% } %>
	</tbody>

</table>

<a href="%%target%%?employeeId=<%= h.getEmployeeId()%>" class="btn">Add New Address</a>

<!--END-->
</body>
</html>
