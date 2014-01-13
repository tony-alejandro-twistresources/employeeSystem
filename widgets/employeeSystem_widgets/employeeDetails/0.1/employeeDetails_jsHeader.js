
var EmployeeDetails = function() {
	return {
		myVariable: null,

		init: function() {
			alert("EmployeeDetails.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".EmployeeDetails .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("EmployeeDetails.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(EmployeeDetails.init()); // Run after page loads