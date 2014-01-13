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
<%@page import="tooltwist.employeeSystem.productionHelpers.ContactListProductionHelper"%>
<%@page import="tooltwist.misc.JspHelper"%>
<%@page import="tooltwist.ecommerce.AutomaticUrlParametersMode"%>
<%@page import="tooltwist.ecommerce.RoutingUIM"%>
<%
	// Get the production helper for this widget
	ContactListProductionHelper h = (ContactListProductionHelper) helper;
	XData data = h.getData(jh);
	XNodes nodes = data.getNodes("/select/employeeContactInfo");
%>

<table class="table table-striped table-bordered table-hover">
	<caption>Employee Contact Information</caption>
	<thead>
		<tr>
			<th>Details</th>
			<th>Type</th>
		</tr>
	</thead>
	<tbody>
		<% for(nodes.first(); nodes.next();) { %>
		<tr>
			<td>
				<a href="%%target%%?contactId=<%= nodes.getText("contactId") %>"><%= nodes.getText("contactDetails") %></a>
			</td>
			<td><%= nodes.getText("contactType") %></td>
		</tr>
		<% } %>
	</tbody>

</table>

<a href="%%target%%?employeeId=<%= h.getEmployeeId()%>" class="btn">Add New Contact Information</a>

<!--END-->
</body>
</html>
