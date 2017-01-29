<form>
<div id="create-meal-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Search food to add to your meal...</h4>
			</div>
			<div class="modal-body">
				<input type="text" id="search-bar" class="form-control" placeholder="Search...">
				<hr/>
				<div class="table-responsive">
					<table class="table table-striped" id="foods-table">
						<thead>
							<tr>
								<th>NAME</th>
								<th>AMOUNT</th>
								<th>UNITS</th>
								<th>CALS</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="modal-food-list">
							
						</tbody>
					</table>
				</div>
             	<hr/>
             	<h3>My Meal</h3> 
             	 <div  class="table-responsive">
             	 	<table class="table table-striped" id="foods-table">
						<thead>
							<tr>
								<th>NAME</th>
								<th>AMOUNT</th>
								<th>UNITS</th>
								<th>CALS</th>
								<th>FAT BLOCKS</th>
								<th>CARB BLOCKS</th>
								<th>PROTEIN BLOCKS</th>
							</tr>
						</thead>
						<tbody id="modal-meal-list">

						</tbody>	
					</table>
             	 </div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-default" id="save-meal">Save</button>
			</div>
		</div>
	</div>
</div>
</form>