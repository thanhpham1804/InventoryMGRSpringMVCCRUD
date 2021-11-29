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


<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<title>Delete Product</title>
</head>
<body>
	<div class="index-main">


		<!--Begin Navbar-->
		<jsp:include page="header.jsp" />

		<!--Begin Content-->
		<div class="container">
			<div class="heading">
				<h1>Delete Product by ID#</h1>
				<div class="well">
					<div class="deleteForm">

						<form action="DeleteProductData.do" method="POST">
							<select name="ID">
								<c:forEach var="item" items="${inventory}">

									<option value="${item.id}">Product ID: ${item.id}</option>

								</c:forEach>
							</select> <br> <button type="submit" value="submit" class="btn btn-danger">delete</button>

						</form>
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
<jsp:include page="footer.jsp" />

</body>
</html>
