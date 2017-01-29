<div id="create-food-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Create New Food</h4>
			</div>
			<div class="modal-body">
				<form id="new-food-form" method="post" class="form-horizontal">
					<div class="form-group row">
						<label for="new-food-name" class="col-xs-2 col-form-label">Food Name:</label>
						<div class="col-xs-7">
							<input class="form-control new-food-input" type="text" id="new-food-name"/>
						</div>
					</div>
					<div class="form-group row">
						<label for="new-food-amount" class="col-xs-2 col-form-label">Amount:</label>
						<div class="col-xs-2">
							<input class="form-control new-food-input" type="text" id="new-food-amount"/>
						</div>
						<div class="cols-xs-2">
							<div id="new-food-unit">Grams</div>
						</div>
					</div>
					<div style="border: 1px solid #000;">
						<div style="margin: 0 auto; width: 800px;" >
						<h3>Nutrition Facts</h3>
						<hr/>
						<div class="form-group row">
							<label for="new-food-cals" class="col-xs-1 col-form-label">Calories:</label>
							<div class="col-xs-2">
								<input type="text" id="new-food-cals" class="new-food-input"/>
							</div>
						</div>
						<hr/>
						<div class="form-group row">
							<label for="new-food-fat" class="col-xs-2 col-form-label">Fat:</label>
							<div class="col-xs-4">
								<input type="text" id="new-food-fat" class="new-food-input"/> g
							</div>
						</div>
						<div class="form-group row">
							<label for="new-food-carbs" class="col-xs-2 col-form-label">Carbohydrates:</label>
							<div class="col-xs-4">
								<input type="text" id="new-food-carbs" class="new-food-input"/> g
							</div>
						</div>
						<div class="form-group row">
							<label for="new-food-protein" class="col-xs-2 col-form-label">Protein:</label>
							<div class="col-xs-4">
								<input type="text" id="new-food-protein" class="new-food-input"/> g
							</div>							
						</div>
						<div class="form-group">
							<div class="col-xs-9 col-xs-offset-3">
								<div id="messages">
								
								</div>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-xs-4">
								<button type="button" class="btn btn-primary" id="foodSave">Save</button>
							</div>
						</div>
						
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

