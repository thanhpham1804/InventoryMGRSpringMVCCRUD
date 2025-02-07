<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value = "en_US"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>View Inventory</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:500,900|Quicksand"
	rel="stylesheet">
<link rel="stylesheet" href="styles/main.css">

<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>

<title>AutoShop Inventory Management System- Group 9 </title>
</head>
<body>
	<div class="index-main">
		<jsp:include page="header.jsp" />
	

		<!--Begin Content-->
		<br>
		<h1><center>Inventory Report</center></h1>
		<div class="container" id="inventoryList">
		<h3>Quantity by Manufacturer</h3>
		
			<table class="table-hover table-responsive">
				<thead class="thead-inverse">
					<tr>
						<th>Manufacturer</th>
						<th>Quantity</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${quantityByManufacturer}">
						<tr>
							<td class="spacing">${item.manufacturer}</td>
							<td class="spacing">${item.quantity}</td>							
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		
		<div class="container" id="inventoryList">
		<h3>Assets by Warehouse</h3>
			<table class="table-hover table-responsive">
				<thead class="thead-inverse">
					<tr>
						<th>Location</th>
						<th>Quantity</th>
						<th>Total Assets (Cost)</th>
						<th>Total Assets (MSRP)</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${assetsByWarehouse}">
						<tr>
							<td class="spacing">${item.location}</td>
							<td class="spacing">${item.quantity}</td>
							<td class="spacing"><fmt:formatNumber value = "${item.unitcost}" type = "currency"/></td>
							<td class="spacing"><fmt:formatNumber value = "${item.msrp}" type = "currency"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
                <script type='text/javascript' src='https://prod-useast-b.online.tableau.com/javascripts/api/viz_v1.js'></script>
                <div class='tableauPlaceholder' style='width: 1000px; height: 827px;'>
                    <object class='tableauViz' width='1000' height='827' style='display:none;'>
                        <param name='host_url' value='https%3A%2F%2Fprod-useast-b.online.tableau.com%2F' /> 
                        <param name='embed_code_version' value='3' /> 
                        <param name='site_root' value='&#47;t&#47;sameerviz' />
                        <param name='name' value='Eadprohdashboard&#47;Dashboard1' />
                        <param name='tabs' value='no' /><param name='toolbar' value='yes' />
                        <param name='showAppBanner' value='false' />
                    </object>
                </div>


		<!-- /container -->
		<!-- jQuery first, then Bootstrap JS. -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</div>
	
	
	
	
	


	
	

</body>

<!-- Footer -->
<jsp:include page="footer.jsp" />


</body>
</html>
