<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String username = (String)session.getAttribute("username"); %>
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
					<li><a href="aboutus.jsp">About Us</a>
					</li>
					<%if(username != null)  {%>
					<li ><a class="bold" href="GetInventory.do">inventory
							list</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">View/Edit <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="bold" href="ViewProduct.do">view product</a></li>
							<li><a class="bold" href="AddProduct.do">add product</a></li>
							<li><a class="bold" href="EditProduct.do">edit product</a></li>
						</ul></li>
					<li><a class="bold" href="SearchInventory.do">Search Inventory</a></li>
					<li><a class="bold" href="Report.do">Report</a></li>
					
					<%} %>
					<!--  <li><a class="bold" href="contact.jsp">contact</a></li>  -->
					<% 
					if(username != null)
					{
						%>
							<li class="user">
							<p><img src="user.png"></img> <%=username%></p>
							<a style="padding-top: 0px;" href="Logout.do">Logout</a>
							</li>
						 <%
					}
					
					%>
				</ul>
			</div>
		</div>
		</nav>