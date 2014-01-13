
var AddressDetailsForm = function() {
	return {
		myVariable: null,

		init: function() {
			alert("AddressDetailsForm.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".AddressDetailsForm .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("AddressDetailsForm.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(AddressDetailsForm.init()); // Run after page loads