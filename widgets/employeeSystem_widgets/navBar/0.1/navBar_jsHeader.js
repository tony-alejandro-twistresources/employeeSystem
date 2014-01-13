
var NavBar = function() {
	return {
		myVariable: null,

		init: function() {
			alert("NavBar.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".NavBar .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("NavBar.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(NavBar.init()); // Run after page loads