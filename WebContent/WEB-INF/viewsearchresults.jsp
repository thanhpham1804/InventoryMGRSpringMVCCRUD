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
<title>View Search Results</title>

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
<title>View Search Results</title>
</head>
<body>
	<div class="index-main">


		<jsp:include page="header.jsp" />


		<!--Begin Content-->
		<div class="container" id="inventoryList">
			<table class="table-hover table-responsive">
				<thead class="thead-inverse">
					<tr>
						<th class="spacing">Product ID</th>
						<th class="spacing">Product Name</th>
						<th class="spacing">Model</th>
						<th class="spacing">Manufacturer</th>
						<th class="spacing">Year</th>
						<th class="spacing">Body</th>
						<th class="spacing">Location</th>
						<th class="spacing">MSRP</th>
						<th class="spacing">Unit Cost</th>
						<th class="spacing">Discount</th>
						<th class="spacing">Quantity</th>
						<th class="spacing">Status</th>
						<th class="spacing"> </th>
					
				</thead>
				<tbody>
					<c:forEach var="product" items="${product}">
					<tr>
						<td class="spacing">${product.id}</td>
						<td class="spacing">${product.name}</td>
						<td class="spacing">${product.modelType}</td>
						<td class="spacing">${product.manufacturer}</td>
						<td class="spacing">${product.year}</td>
						<td class="spacing">${product.body}</td>
						<td class="spacing">${product.location}</td>
						<td class="spacing">${product.msrp}</td>
						<td class="spacing">${product.unitcost}</td>
						<td class="spacing">${product.discount}</td>
						<td class="spacing">${product.quantity}</td>
						<td class="spacing">${product.getStatus()}</td>
						
					</tr>
					</c:forEach>
				</tbody>

				</table>
			
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
