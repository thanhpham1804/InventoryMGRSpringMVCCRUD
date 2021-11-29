<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Inventory Management System G9-AutoShop </title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:500,900|Quicksand" rel="stylesheet">

    <link rel="stylesheet" href="styles/main.css"/>

    <!-- jQuery -->
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

    <script>
        // A $( document ).ready() block.
        $(document).ready(function() {
            console.log("ready!");
        });
    </script>
</head>

<body>
    <div >   
    <!--Begin Navbar-->
 		<jsp:include page="WEB-INF/header.jsp" />

    
    <div class="container">
        <div class="containerContact">
            <header>
            <h1>Feel free to leave us a message </h1>
            <p>Please give us 24 hours to respond! Thanks for your patience.</p>
        </header>
        </div>
        <form action="contact.html">
          <label for="fname">First Name</label>
          <input type="text" id="fname" name="firstname" placeholder="Your name..">
        <br>
          <label for="lname">Last Name</label>
          <input type="text" id="lname" name="lastname" placeholder="Your last name..">
        <br>
        <br>

          <label for="country">Country</label>
          <select id="country" name="country">
            <option value="australia">Australia</option>
            <option value="canada">Canada</option>
            <option value="usa">USA</option>
          </select>
        <br>

          <label for="subject">Subject</label>
          <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
        
    
          <input type="submit" value="Submit">
      
        </form>
      </div>

    <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </div>
    </body>

<!-- Footer -->
 <jsp:include page="WEB-INF/footer.jsp" />

</html>
