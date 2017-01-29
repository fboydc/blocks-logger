<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:layout>
	<jsp:attribute name="body_area">
		 <h1 class="page-header">Dashboard</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Food</h4>
              <span class="text-muted">0 cals</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Activity</h4>
              <span class="text-muted">0 cals</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Weight</h4>
              <span class="text-muted">190 lbs</span>
            </div>
			  <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Mood</h4>
              <span class="text-muted">Neutral</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Cal. Budget</h4>
              <span class="text-muted">1909</span>
            </div>
			 <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Net Calories</h4>
              <span class="text-muted">-3717 cal</span>
            </div>
           </div>
             <div>
            	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
            </div>
           
	</jsp:attribute>
	<jsp:attribute name="custom_js">
		
		<script src="../resources/js/charts.js"></script>
		
		<script>
		$(document).ready(function(){
			
			//Reset side menu// 
			setSideMenu();
		
			/******************************************************************
			*Description: This function will set the current side menu section
			*class as 'active'. This will allow us to see the current section
			*highlighted in blue.
			*******************************************************************/
			function setSideMenu(){
				if ($("#food").hasClass("active")){
					$("#food").removeClass("active");
				}
					
				$("#dash").addClass("active");
				
			}
			
			
		});
		
		
		
		</script>
	</jsp:attribute>
</t:layout>