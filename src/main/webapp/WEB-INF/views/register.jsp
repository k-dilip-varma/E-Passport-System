<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Register</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
		.login{
			width: 600px;
	        margin-left: 436px;
	    	margin-top: 100px;
	    	border-radius: 20px;
	    	padding: 20px;
	    	
		}
		body{
			background-image:url('/images/img1.jpg');
			background-repeat:no-repeat;
			background-size:cover;
		}
		
	</style>
</head>
<body style="background-color:#411de23b;" >
	<form action="/register" method="post">
	<nav class="navbar navbar-light" style="background-color: #52595D;">
    	<a class="navbar-brand" href="/views/about.jsp" style="margin-left:100px;font-size:30px;color:white">Dash Board </a>
   		<a class="navbar-brand" href="/" style="margin-right:50px;font-size:25px;color:white">Sign In</a>
     
	</nav>
	
	<div class="login" style="background-color:#2e7fe8">
		<h2 Style="text-align:center" >Provide your Credentials</h2>
		<h3  Style="text-align:center">${msg1}</h3>
	 	<div class="form-group" >
   
    
    	<label for="exampleInputEmail1">First Name:</label>
    	<input type="text" pattern="[a-zA-Z]+" title="must be alphabets only" name="firstName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Firstname" required>
   
    
    	<label for="exampleInputEmail1">Last Name:</label>
    	<input type="text"  pattern="[a-zA-Z]+"  title="must be alphabets only"  name="lastName" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Lastname" required>
    
     	<label for="exampleInputEmail1">Date of Birth:</label>
    	<input type="date" name="dob" class="form-control" max="2023-06-04" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter DAteOfBirth"  required>
    
    	<div class="form-group" >
	    	<label for="exampleInputPassword1" >Gender: </label>
	     	<select class="form-control" name="gender" id="exampleFormControlSelect1">
		      	<option>Male</option>
		      	<option>Female</option>
		      	<option>Other</option>
    		</select>
    	</div>
     
    	<label for="exampleInputEmail1">Email Id:</label>
    	<input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" title="Must be a mail" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}" required>
  	
  	 	<label for="exampleInputEmail1">Address:</label>
     	<input type="text" name="presentAddress" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address with Pincode"  required>
  		<p style="color:#a92f2f">Enter address along with Pincode</p>
    	<label for="exampleInputEmail1">Password:</label>
    	<input type="password" name="password" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[!@#$%^&*+`~=?\|<>/]).{8,}"
     		   title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
   
    	<label for="exampleInputEmail1">Phone Number:</label>
    	<input type="number" name="phone" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Phone Number" min="6000000000" max="9999999999" title="Must contain at least 10 digits" required>
    	</div>
    
    	<button type="submit" class="btn btn-primary mt-4 btn-block form-control" style="background-color:black;color:white" >Register</button>
    </div>
    </form>
    
</body>
</html>