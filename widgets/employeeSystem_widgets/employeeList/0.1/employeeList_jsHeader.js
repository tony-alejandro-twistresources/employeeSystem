
var EmployeeList = function() {
	return {
		myVariable: null,

		init: function() {
			alert("EmployeeList.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".EmployeeList .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("EmployeeList.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(EmployeeList.init()); // Run after page loads