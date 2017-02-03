$(document).ready(function(){
	
	
		var meal = new Array();
	
		/*
		 * Purpose: This method will the modal and the values input by the user.
		 * 
		 * 
		 */
		$("#create-meal-modal").on("hidden.bs.modal", function(){

			$("#modal-food-list").html("");
			$("#modal-meal-list").html("");
			$("#search-bar").val('');
			
		});
			
		/*
		 * Purpose: this method will handle food search onKeyUp, filtering 
		 * the results depending on what the user inputs
		 * 
		 */
	
		
		$("#search-bar").keyup(function(){
			
			$.ajax({
				type:"POST",
				url: '/BlocksLogger/FoodsServlet',
				data : {
					userStrings : $('#search-bar').val(),
					requestKind : "2"
				},
				dataType : "json",
				success: function(data){
					
					$.each(data, function(key, value){
						$("#modal-food-list").html("");
						$("#modal-food-list").append("<tr class=\"food-row\">");
						$("#modal-food-list").append("<td style=\"display: none;\">"+value.id+"</td>");
						$("#modal-food-list").append("<td>"+value.name+"</td>");
						$("#modal-food-list").append("<td><input class=\"food-amount\" type=\"text\" value=\"" + value.amount+"\"/></td>");
						$("#modal-food-list").append("<td>"+value.unit+"</td>");
						$("#modal-food-list").append("<td>"+value.cals+"</td>");
						$("#modal-food-list").append("<td><a class=\"add\" href=\"#\">add</a></td>");
						$("#modal-food-list").append("<td>"+value.fatblocks.toFixed(1)+"</td>");
						$("#modal-food-list").append("<td>"+value.carbblocks.toFixed(1)+"</td>");
						$("#modal-food-list").append("<td>"+value.proteinblocks.toFixed(1)+"</td>");
						$("#modal-food-list").append("</tr>");
					});
					
				}
			
			});
			
			
			
		});
		
		/*
		 * Purpose: this method will add the selected food to the meals table 
		 * 
		 * 
		 */
		$("#modal-food-list").on("click", ".add", function(){
			foodListReference = $(this).parent().prevAll();
			
			if($.isNumeric(foodListReference.eq(2).find(">:first-child").val()))
				addFood(foodListReference.eq(4).html(),foodListReference.eq(3).html(),foodListReference.eq(2).find(">:first-child").val(),foodListReference.eq(0).html(), foodListReference.eq(1).html(), $("#modal-meal-list"));
			else
				$.notify("Please make sure you have typed a valid number for quantity!");
			
		});
		
		
		/*
		 * 
		 * Purpose: this method will remove the selected food from the meals table
		 * 
		 * 
		 */
		
		$("#modal-meal-list").on("click", ".food-remove", function(){
			foodListReference = $(this).parent().prevAll();
			

			$(this).parent().parent().remove();
			if($(".food-row").size() ==  1){
				$("#meal-total-row").remove();
			}else{
				totalizeMeal($("#modal-meal-list"));
			}
			
			
			
		});
		
		

		
		
		/*
		 * Purpose: this method will change the calories depending on what the user inputs
		 * on the amount input.
		 * 
		 */
		
		$("#modal-food-list").on("keyup", ".food-amount", function(){
			if($.isNumeric($(this).val())){
				changeCals($(this).parent().prev().html(),$(this).val(), $(this).parent().next().next());
				
			}	
			else
				$(this).parent().next().next().html("NaN");
			
				
				
			
		});
		
		
		$("#save-meal").on("click", function(){
			if($("#modal-meal-list").children().size()>1){
				
			}else
				$.notify("you have not added any food for this meal!","Error");
			
				
		});
		
		
		function changeBlocks(){
			
		}
		
		
		
		function changeCals(food, amnt, element){
			
			
			$.ajax({
				url: '/BlocksLogger/FoodsServlet',
				data: {
					userFood : food,
					amnt : amnt,
					requestKind : "1"
					
						
				},
				success : function(responseText){
					element.html(responseText);
				}
			
			});
			
			
		}
		
		
		
		
		
		function addFood(id, foodName, amount, cals, unit, element){
			
			var food = new Object();
			food.id = id;
			food.name = foodName;
			food.amount = amount;
			food.cals = cals
			food.unit = unit;
			meal.push(food);
			
			
			/*
			$.ajax({
				url: '/BlocksLogger/FoodsServlet',
				data : {
					userFood : foodName,
					amount : amount,
					units : unit,
					cals : cals,
					requestKind : "3"
				},
				success: function(responseText){
					element.append(responseText);
					totalizeMeal(element);
				}
			});
			*/
			
			
			
			
		}
		
		
		function totalizeMeal(element){
			 $("#meal-total-row").remove();
			 var total_amnt = 0;
			 var total_cals = 0;
			 var total_f_blocks = 0;
			 var total_c_blocks = 0;
			 var total_p_blocks = 0;
			 
			 $(".food-amnt").each(function(){
				 total_amnt += parseFloat($(this).text());
			 });
			 
			 $(".food-cals").each(function(){
				 total_cals += parseFloat($(this).text());
			 });
			 
			 $(".food-fblocks").each(function(){
				total_f_blocks += parseFloat($(this).text()); 
			 });
			 
			 $(".food-cblocks").each(function(){
					total_c_blocks += parseFloat($(this).text()); 
			 });
			 
			 $(".food-pblocks").each(function(){
					total_p_blocks += parseFloat($(this).text()); 
			 });
			
			 
			 element.append("<tr id=\"meal-total-row\">"
					 		+"<td><b>Total</b></td>"+
					 		"<td>"+total_amnt+"</td>"+
					 		"<td></td>"+
					 		"<td>"+total_cals.toFixed(2)+"</td>"+
					 		"<td>"+total_f_blocks.toFixed(2)+"</td>"+
					 		"<td>"+total_c_blocks.toFixed(2)+"</td>"+
					 		"<td>"+total_p_blocks.toFixed(2)+"</td>"+
					 		"</tr>"+
					 		
					 		
			 				"</tr>");
			 
		}
		
		

	
	


});
	


