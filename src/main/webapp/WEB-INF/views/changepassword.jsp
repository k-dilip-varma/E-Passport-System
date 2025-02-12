<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Change Password</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
		body{
			background-image:url('/images/img7.jpg');
		}
	</style>
</head>
<body>
	<div class="container" style="padding-top:100px; width:50%">
	<form action="/changepassword" method="post">
	<h4>${mismatch}</h4>
		 <label for="exampleInputEmail1">Old Password:</label>
	    <input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter old Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
	    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
	    
	    
	    <label for="exampleInputEmail1">New Password:</label>
	    <input type="password" name="newpassword" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter new Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}" 
	    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
	    
	     <label for="exampleInputEmail1">Confirm Password:</label>
	    <input type="password" name="newpassword1" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Confirm Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}" 
	    title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
	   
	   	    <button type="submit" class="btn btn-primary mt-4 btn-block form-control" >Reset Password</button>
	 </form>
	 </div>
</body>
</html>