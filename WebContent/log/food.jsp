<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:layout>
	<jsp:attribute name="body_area">
		 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#" data-toggle="modal" data-target="#create-meal-modal">Add Meal <span class="sr-only">(current)</span></a></li>
				<li><a href="#">Pending</a></li>
				<li><a href="#">Weight</a></li>
				<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Food <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="javascript:logFoodViewTable()" data-toggle="modal" data-target="#view-food-modal" data-backdrop="static" id="view-food-anchor">View Food</a></li>
					<li><a href="#" data-toggle="modal" data-target="#create-food-modal" data-backdrop="static">Create Food</a></li>
					<li><a href="#">Something else here</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">Separated link</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="#">One more separated link</a></li>
				</ul>
				</li>
			</ul>
		</div>
		<%@ include file="./modals/create-meal-modal.jsp" %>
		<%@ include file="./modals/create-food-modal.jsp" %>
		<%@ include file="./modals/view-food-modal.jsp" %>
		
		<h2>My Daily Meals: Tuesday, January 17</h2>
		
		<br/>
		<table class="table">
			<thead>
				<tr>
					<th><h3>Meal 1</h3></th>
					<th>8:55 a.m.</th>
				</tr>
				<tr>
					<th>Food</th>
					<th>Fat Blocks</th>
					<th>Carb Blocks</th>
					<th>Protein Blocks</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Sancocho</td>
					<td>3</td>
					<td>2</td>
					<td>0</td>
				</tr>
				<tr>
					<td>Chicken</td>
					<td>0</td>
					<td>0</td>
					<td>3</td>
				</tr>
				<tr>	
					<td>Cheese</td>
					<td>1</td>
					<td>0</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Rice</td>
					<td>0</td>
					<td>2</td>
					<td>0</td>
				</tr>
				<tr>
					<td><b>Total</b></td>
					<td><b>4</b></td>
					<td><b>4</b></td>
					<td><b>4</b></td>
					
				</tr>
			</tbody>
		</table>
		
		<table class="table">
			<thead>
				<tr>
					<th><h3>Meal 2</h3></th>
					<th>10:45 a.m.</th>
				</tr>
				<tr>
					<th>Food</th>
					<th>Fat Blocks</th>
					<th>Carb Blocks</th>
					<th>Protein Blocks</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Sancocho</td>
					<td>3</td>
					<td>2</td>
					<td>0</td>
				</tr>
				<tr>
					<td>Chicken</td>
					<td>0</td>
					<td>0</td>
					<td>3</td>
				</tr>
				<tr>	
					<td>Cheese</td>
					<td>1</td>
					<td>0</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Rice</td>
					<td>0</td>
					<td>2</td>
					<td>0</td>
				</tr>
				<tr>
					<td><b>Total</b></td>
					<td><b>4</b></td>
					<td><b>4</b></td>
					<td><b>4</b></td>
					
				</tr>
			</tbody>
		</table>
	</jsp:attribute>
	<jsp:attribute name="custom_js">
		<script src="../resources/js/log-food-meal-create.js"></script>
		<script src="../resources/js/log-food-food-create.js"></script>
		<script src="../resources/js/log-food-view.js"></script>
		<script>
		$(document).ready(function(){
			
			 
			setSideMenu();
			
			
			/******************************************************************
			*Description: This function will set the current side menu section
			*class as 'active'. This will allow us to see the current section
			*highlighted in blue.
			*******************************************************************/
			function setSideMenu(){
				if ($("#dash").hasClass("active")){
					$("#dash").removeClass("active");
				}
					
				$("#food").addClass("active");
				
			}	
			
		});
		</script>
	</jsp:attribute>
</t:layout>
