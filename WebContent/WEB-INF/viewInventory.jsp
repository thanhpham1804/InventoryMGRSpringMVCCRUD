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
<title>AutoShop Inventory Management System- Group 9 </title>
</head>
<body>
	<div class="index-main">
		<jsp:include page="header.jsp" />
	

		<!--Begin Content-->
		<h1 class="center">Inventory List</h1>
		<div class="row">
			<div class="col-md-12">
				<div class="addButtonTop">
					<form action="AddProduct.do" method="GET">
						<button type="submit" name="ID" value="ID"
							class="btn btn-md btn-success">add product</button>
					</form>
				</div>
			</div>
		</div>

		<div class="container" id="inventoryList">
			<table class="table-hover table-responsive">
				<thead class="thead-inverse">
					<tr>
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Model</th>
						<th>Manufacturer</th>
						<th>Year</th>
						<th>Body</th>
						<th>Location</th>
						<th>MSRP</th>
						<th>Unit Cost</th>
						<th>Discount</th>
						<th>Quantity</th>
						<th>Status</th>
						<th colspan="3">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${inventory}">
						<tr>
							<td class="spacing">${item.id}</td>
							<td class="spacing">${item.name}</td>
							<td class="spacing">${item.modelType}</td>
							<td class="spacing">${item.manufacturer}</td>
							<td class="spacing">${item.year}</td>
							<td class="spacing">${item.body}</td>
							<td class="spacing">${item.location}</td>
							<td class="spacing"><fmt:formatNumber value = "${item.msrp}" type = "currency"/></td>
							<td class="spacing"><fmt:formatNumber value = "${item.unitcost}" type = "currency"/></td>
							<td class="spacing">${item.discount}</td>
							<td class="spacing">${item.quantity}</td>
							<td class="spacing">${item.getStatus()}</td>
							
							<td class="viewButton"><form
									action="ViewProduct.do?ID=${item.id}" method="GET">
									<button type="submit" name="ID" value="${item.id}"
										class="btn btn-xs btn-primary">view</button>
								</form></td>
							<td class="editButton"><form
									action="EditProduct.do?ID=${item.id}" method="GET">
									<button type="submit" name="ID" value="${item.id}"
										class="btn btn-xs btn-warning">edit</button>
								</form></td>
							<td class="deleteButton"><form action="DeleteProductData.do"
									method="POST">
									<button type="submit" name="ID" value="${item.id}"
										class="btn btn-xs btn-danger">delete</button>
								</form></td>
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
	</div>

</body>

<!-- Footer -->
<jsp:include page="footer.jsp" />


</body>
</html>
