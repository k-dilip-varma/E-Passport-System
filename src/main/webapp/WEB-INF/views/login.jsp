<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
		body{
			background-image:url('/images/img1.jpg');
			background-repeat:no-repeat;
			background-attachment:fixed;
			background-size:100% 100%;
		}
		.login{
			width: 450px;
	        margin-left: 500px;
	    	margin-top: 199px;
	    	border-radius: 20px;
	    	padding: 20px;	
		}
		.button
		{
			margin-left:60px
		}
		a
		{
			color:white;
			
		}
		label{
			color:white;
			font-size:20px
		}
		h1
		{
			color:black;
		}
		
	</style>
</head>
<body >

	<form  action="/login" method="post" >
	<nav class="navbar navbar-light" style="background-color: #000000;">
    	<a class="navbar-brand" href="/views/about.jsp" style="margin-left:615px;font-size:30px;color:white">XYZ Passport Services</a>
     
	</nav>
	
	<div class="login" >
		<h1 class="text-center" >Login Here</h1>
		<h4>${changed}</h4>
		<h1>${msg1}</h1>
	 	<div class="form-group" >
    		<label for="exampleInputEmail1">Email Id:</label><br>
    		<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email Id" required>
   
    		<label class=" mt-3"for="exampleInputEmail1">Password:</label><br>
    		<input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}" 
    			   title="Must contain at least one number and one uppercase and lowercase letter and special character, and at least 8 or more characters" required>
   	    	<!--  
   	    	<a href="/forgot">Forgot Password</a>
   	    	-->
   	
    
    		<button type="submit" class="btn btn-primary mt-4 btn-block form-control"  >Login</button><br><br>
    		
    		<div style="margin-left: 100px;">
    			<a  href="/reg" >NewUser? Then Register Here...</a>
    		</div>
    	</div>
   </div>
   </form>
</body>
</html>