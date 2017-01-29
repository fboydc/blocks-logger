$(document).ready(function(){
	
	$("#view-food-anchor").click(function(){
		loadViewFood();
	});
	

	function loadViewFood(){
		$.ajax({
			url: '/BlocksLogger/FoodsServlet',
			data: {
				requestKind: "4"
			},
			success: function(responseText){
				$("#view-foods-table").html(responseText);
			}
		});
	
	}
});