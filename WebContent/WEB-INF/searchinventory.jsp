<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<link rel="stylesheet" href="styles/viewStyles.css">

<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<title>View Product</title>
</head>
<body>
	<div class="index-main">


		<jsp:include page="header.jsp" />


		<!--Begin Content-->
		<div class="container">
			<div class="heading">
				<h1>Search Product</h1>
				<div class="well">
					<h5>Search by Manufacturer</h5>
					<form action="SearchInventoryData.do" method="GET">
						<input type="text" name="Company" id = "Company" placeholder="Enter Company Name">
						  <button type="submit" value="view product details" class="btn btn-primary">Search</button>
					</form>
					<br>
					<h5>Search by Body Type</h5>
					<form action="SearchInventoryDatabytype.do" method="GET">
						<input type="text" name="Type" id = "Type" placeholder="Enter Body Type">
						  <button type="submit" value="view product details" class="btn btn-primary">Search</button>
					</form>
					<br>
					<h5> Search by Price</h5>
					<form action="SearchInventoryDatabyprice.do" method="GET">
						<input type="text" name="Price" id = "Price" placeholder="Enter Maximum Price">
						  <button type="submit" value="view product details" class="btn btn-primary">Search</button>
					</form>
					<br>
					<h5>Search by Model Name</h5>
					<form action="SearchInventoryDatabymodelname.do" method="GET">
						<input type="text" name="Mname" id = "Mname" placeholder="Enter Model Name">
						  <button type="submit" value="view product details" class="btn btn-primary">Search</button>
					</form>
					<br>
					<h5> Search by Year</h5>
					<form action="SearchInventoryDatabyyear.do" method="GET">
						<input type="text" name="Year" id = "Year" placeholder="Enter Model Year">
						  <button type="submit" value="view product details" class="btn btn-primary">Search</button>
					</form>
					
					
				</div>
			</div>
			
		</div>

		<!-- /container -->
		<!-- jQuery first, then Bootstrap JS. -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

<!-- Footer -->
<jsp:include page="footer.jsp" />



</body>

</body>
</html>
