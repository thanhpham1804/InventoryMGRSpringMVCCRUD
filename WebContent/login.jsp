<!DOCTYPE html>
<html>

<head>

<style>


</style>

</head>
 <!-- Bootstrap CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css?family=Raleway:500,900|Quicksand" rel="stylesheet">
 <link rel="stylesheet" href="styles/main.css">
 <title>Group 9 Inventory Management System</title>

<body>

        <!--Begin Navbar-->
 		<jsp:include page="WEB-INF/header.jsp" />


	<script>
	function login()
	{
		var un=document.forms["myForm"]["Uname"].value;
		var pw=document.forms["myForm"]["Pass"].value;
		
		if(un=="name" && pw=="pass")
		{
			window.location.href="index.html";
		}

		else
		{
			alert("Invalid username/password");
		}
	}
	</script>

	<!-- <div class="center"> -->
	<div style="padding-top: 90px; padding-right: 30px; padding-bottom: 50px; padding-left: 80px;">

        <!--Begin Content-->
                <h1>Welcome to the Inventory Management System</h1>
                <div class="mainBackgroundImage">
                    <img src="./images/background.jpg" alt="main background image of product family"style="width: 200px; height: 200px;">
                </div>
                <h2>Please Login to see Inventory</h2>
    
		<!-- <h1 style="font-size:200%;color:black;font-family: 'Times New Roman', Times, serif;">
		Please use your username & password to login
		</h1> -->

	<form name="myForm" method="post">

		<label style="font-size:15px;color:black;font-family:'Times New Roman', Times, serif;">
		<b>Username</b>
		</label>

		<input type="text" name="Uname" class="inputText" placeholder="Username">

		<br><br>   

		<label style="font-size:15px;color:black;font-family:'Times New Roman', Times, serif;">
		<b>Password</b>
		</label>

		<input type="password" name="Pass" class="inputText" placeholder="Password" >

		<br><br>

		<input type="button" name="log" id="logButton" value="Login" onclick="login()" style="background-color: #7fabec;">
	</form>

</div>
</body>
<!-- Footer -->
 <jsp:include page="WEB-INF/footer.jsp" />



</html>