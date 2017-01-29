$(document).ready(function(){
	
	$("#create-food-modal").on("hidden.bs.modal", function(){
		document.getElementById("new-food-form").reset();	
		$(".new-food-input").css("border", "");
	});
	
	
	
	
	
	
	$("#foodSave").on("click", function(){
		
		
		var nodes =  [$("#new-food-name"), $("#new-food-amount"), $("#new-food-cals"), $("#new-food-fat"), $("#new-food-carbs"), $("#new-food-protein")];
		if(!checkIfEmpty(nodes) && !checkForNonNumeric(nodes, 0)){
			$.ajax({
				url:'/BlocksLogger/FoodsServlet',
				data: {
					requestKind: "5",
					name: nodes[0].val(),
					amount: nodes[1].val(),
					unit: $("#new-food-unit").html(),
					cals: nodes[2].val(),
					fat: nodes[3].val(),
					carbs: nodes[4].val(),
					protein: nodes[5].val()
				},
				success: function(){
					
				}	
			});
			$("#create-food-modal").modal("toggle");
			$.notify("Food added to your selection.","success");
		}
	});
	
	function checkIfEmpty(nodes){
		outcome = false;
		$.each(nodes, function(index, value){
			if(!value.val()){
				value.css("border", "1px solid red");
				outcome = true;
			}
		});
		return outcome;
	}
	
	function checkForNonNumeric(nodes, nonNumeric){
		
		var outcome = false;
		$.each(nodes, function(index, value){
			if(index != nonNumeric){
				
				if(!$.isNumeric(value.val())){
					value.css("border", "1px solid red");
					outcome = true;
				}
			}
		});
		return outcome;
	}
	
	
	
	
	
	
});