<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forgot Password</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
		.login{
			width: 400px;
	        margin-left: 500px;
	    	margin-top: 100px;
	    	border-radius: 20px;
	    	padding: 20px;	
		}
		.button
		{
			margin-left:60px
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-light" style="background-color:#52595D;">

  	<a class="navbar-brand" href="#" style="margin-left:100px;font-size:30px;color:white">Dash Board</a>
    <a class="navbar-brand" href="/" style="margin-right:50px;font-size:30px;color:white">Sign In</a>
	</nav>
	<form action="/forgotpassword" method="post">

	<div class="login">
		<h2 style="text-align:center;margin-top:30px;font-size:30px;color:#24458bf2">Reset Password</h2>

		<h3 style="text-align:center">${failed}</h3>
	 	<label for="exampleInputEmail1">User Email Id:</label>
   		<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Useremail" required>
    
    	<label for="exampleInputEmail1">New Password:</label>
    	<input type="password" name="newpassword" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter New Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}" 
    		   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
    
     	<label for="exampleInputEmail1">Confirm Password:</label>
    	<input type="password" name="newpassword1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder=" Enter Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}" 
    		   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
   
   	    <button type="submit" class="btn btn-primary mt-4 btn-block form-control" >Reset Password</button>
   	</div>
   	</form>
</body>
</html>