<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%@ attribute name="body_area" fragment="true"%>
<%@ attribute name="custom_js" fragment="true" %>
<%@ attribute name="js_include"  fragment="true"%>

<!DOCTYPE html>
<html lang="en">
  <head>
	<%@ include file="/WEB-INF/template/head.jsp" %>
  </head>
  <body>
  	<%@ include file="/WEB-INF/template/header.jsp" %>
  	<div class="container-fluid">
  		<div class="row">
  			<%@ include file="/WEB-INF/template/sidemenu.jsp" %>
  			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
  				<jsp:invoke fragment="body_area"/>
  			</div>
  		</div>	
  	</div>
  	<%@ include file="/WEB-INF/template/footer.jsp" %>
  	<jsp:invoke fragment="custom_js"/>
  </body>
  
   
</html>
