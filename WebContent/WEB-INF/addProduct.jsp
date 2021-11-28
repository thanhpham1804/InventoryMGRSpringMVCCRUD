<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Inventory Management SpringMVC</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:500,900|Quicksand"
	rel="stylesheet">
<link rel="stylesheet" href="styles/main.css">
<link rel="stylesheet" href="styles/addStyles.css">

<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<title>Add Product</title>
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
					<a href="index.html">Inventory Management SpringMVC</a>
				</h4>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="bold" href="GetInventory.do">inventory list</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">View/Edit <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="bold" href="ViewProduct.do">view product</a></li>
							<li class="active"><a class="bold" href="AddProduct.do">add
									product</a></li>
							<li><a class="bold" href="EditProduct.do">edit product</a></li>
						</ul></li>
					<li><a class="bold" href="DeleteProduct.do">delete product</a></li>
					<li><a class="bold" href="contact.html">contact</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<!--Begin Content-->

		<div class="container">
			<div class="heading">
				<h1>Add New Product</h1>
				<div class="well">
					<div class="addForm">


						<form:form action="AddProductData.do" method="POST" modelAttribute="product">

							<br> 
							<form:input type="text" path="id" class="addField" placeholder="Enter ID" />
							  <form:errors path="id" />
							<br> 
							<form:input type="text" path="name" class="addField" placeholder="Product Name" />
							<form:errors path="name" />
							<br> 
							<form:input type="text" path="modelType" class="addField" placeholder="Model" />
							<form:errors path="modelType" />
							<br> 
							<form:input type="text" path="manufacturer" class="addField" placeholder="Manufacturer" />
							<form:errors path="manufacturer" />
							<br>
							<form:input type="text" path="year" class="addField" placeholder="year" />
							<form:errors path="year" />
							<br> 
							<form:input type="text" path="body"  class="addField" placeholder="Body" />
							<form:errors path="body" />
							<br>
							<form:input type="text" path="locationID"  class="addField" placeholder="LocationID" />
							<form:errors path="locationID" />
							<br>
							<form:input type="text" path="msrp"  class="addField" placeholder="MSRP" />
							<form:errors path="msrp" />
							<br> 
							
							<form:input type="text" path="unitcost"  class="addField" placeholder="Unit Cost" />
							<form:errors path="unitcost" />
							<br>
							<form:input type="text" path="discount"  class="addField" placeholder="Discount" />
							<form:errors path="discount" />
							<br>
							<form:input type="text" path="quantity"  class="addField" placeholder="Quantity" />
							<form:errors path="quantity" />
							<br>
							<button type="submit" value="submit" class="btn btn-primary">submit</button>

						</form:form>
					</div>
				</div>
			</div>
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
</html>
