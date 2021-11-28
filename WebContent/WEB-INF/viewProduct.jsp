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


		<!--Begin Navbar-->
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h4>
					<a href="index.html"><img src="icon.jpg" style="width:130px;height:50px;"></a>  
				</h4>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="bold" href="GetInventory.do">inventory list</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">View/Edit <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a class="bold" href="ViewProduct.do">view
									product</a></li>
							<li><a class="bold" href="AddProduct.do">add product</a></li>
							<li><a class="bold" href="EditProduct.do">edit product</a></li>
              
                                                        <!--<li><a class="bold" href="DeleteProduct.do">delete product</a></li>-->
						</ul></li>
					<<li><a class="bold" href="SearchInventoryData.do">Search Inventory</a></li>
					<li><a class="bold" href="contact.html">contact</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<!--Begin Content-->
		<div class="container">
			<div class="heading">
				<h1>View Product by ID#</h1>
				<div class="well">
					<form action="ViewProductData.do" method="POST">
						<select name="ID">
							<c:forEach var="item" items="${inventory}">

								<option value="${item.id}">Product ID: ${item.id}</option>

							</c:forEach>
						</select> <br> <button type="submit" value="view product details" class="btn btn-primary">view</button>

					</form>

				</div>
			</div>
			<c:if test="${product.id > 0}">
				<table>
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
					</tr>
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
				</table>
			</c:if>
		</div>

		<!-- /container -->
		<!-- jQuery first, then Bootstrap JS. -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

<!-- Footer -->
<footer>
<div class="footer">
	<div class="container-fluid ">
		<p>
			Coded and designed by <a style="color: #1e88cb"
				href="mailto:stephen.e.chiang@gmail.com">Stephen Chiang </a>&copy;&nbsp;2016&ensp;|&ensp;
			<a target="_blank" href="https://www.linkedin.com/in/chiangs"><i
				class="fa fa-linkedin" aria-hidden="true"></i></a> <a target="_blank"
				href="https://500px.com/chiangs"><i class="fa fa-500px"
				aria-hidden="true"></i></a> <a target="_blank"
				href="https://github.com/chiangs"><i class="fa fa-github"
				aria-hidden="true"></i></a> <a target="_blank"
				href="https://www.instagram.com/chiangse/"><i
				class="fa fa-instagram" aria-hidden="true"></i></a>
		</p>
	</div>
</div>
</footer>

</body>

</body>
</html>
