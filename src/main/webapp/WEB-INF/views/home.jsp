<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<style>
		body{
			background-image:url('/images/img2.jpg');
			background-repeat:no-repeat;
			background-attachment:fixed;
			background-size:100% 100%;
			font-family: "Lato", sans-serif;
		}
		h2
		{
			color:#000000;
		}
		h1{
			text-align:center;
			padding:10px;
			color:#ff0000;
		}
		.sidenav {
			 height: 100%;
			 width: 300px;
			 position: fixed;
			 z-index: 1;
			 top: 0;
			 left: 0;
			 background-color:#52595D;
			 overflow-x: hidden;
			 padding-top: 20px;
		}
	
		.sidenav a {
			margin-top:30px;
	  		padding: 6px 6px 6px 32px;
	  		text-decoration: none;
	  		font-size: 30px;
	  		color: white;
	  		display: block;
		}
	
		.sidenav a:hover {
	  		color: Black;
		}
		/*
		.main {
			font-size:30px;
			margin-top:50px;
	  		margin-left: 1000px; 
		}*/
		
		@media screen and (max-height: 450px) {
	  	.sidenav {padding-top: 15px;}
	  	.sidenav a {font-size: 18px;}
		}
	</style>
</head>
<body>
	<h1>${applied}</h1>
	<h1>${appointmented}</h1>
	<h1>${update}</h1>

		 
	<div class="sidenav">
		  <a href="/home">Dash Board</a>
		  <a href="/apply">Apply For Passport</a>
		  <a href="/request">Request Appointment</a>
		  <a href="/viewappoi">View Appointment</a>
		  <a href="/viewappoi">View ApplicationForm</a>
		  <a href="/password">Change Password</a>
		  <a href="/logout">SignOut</a>
  
	</div>
	<!--  
	<div class="main">
  		<h2>Take MEMORIES, leave only FOOTPRINTSS</h2>
	</div>
	-->
	
</body>
</html>