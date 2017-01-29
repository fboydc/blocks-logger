<form>
<div id="view-food-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h3>My Foods</h3>
			</div>
			<div class="modal-body">
				<table class="table table-striped" id="foods-table">
					<thead>
						<tr>
							<th>FOOD NAME</th>
							<th>STANDARD AMOUNT</th>
							<th>STANDARD UNIT</th>
							<th>FAT</th>
							<th>CARBS</th>
							<th>PROTEIN</th>
							<th>CALS</th>
						</tr>
					</thead>
					<tbody id="view-foods-table">
						
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="delete-food" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			 <div class="modal-header">
			 	 <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        		 <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
			 </div>
			 <div class="modal-body">
			 	<div class="alert alert-danger">
			 		<span class="glyphicon glyphicon-warning-sign"></span>Are you sure you want to delete this Food?
			 	</div>
			 </div>
			 <div class="modal-footer">
			 	<button type="button" class="btn btn-success" id="delete"><span class="glyphicon glyphicon-ok-sign"></span>.Yes</button>
			 	<button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove">.No</span></button>
			 </div>
		</div>
	</div>
</div>
</form>