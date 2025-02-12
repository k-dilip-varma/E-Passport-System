
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Apply</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
	
		.login{
			width: 800px;
	        margin-left: 350px;
		    margin-top: 10px;
		    border-radius: 20px;
		    padding: 20px;
	    	
		}
		body{
			background-image:url('/images/img9.jpg');
			background-size:cover;
			background-color:blue;
		}
	</style>

</head>
<body>
	<%@include file="header.jsp" %>
	 
	<h2 style="margin-left:560px;margin-top:20px;font-size:50px;color:#ffffff">Application Form</h2>
		 
	<div class="login" >
		<form action="/submitform" method="post" enctype="multipart/form-data">

  		<div class="row mt-4">
    
	    	<div class="col">
			    <h5 style="color:#ffffff;">First Name:</h5>
			    <b> <input type="text" pattern="[a-zA-Z]+" title="must be alphabets only" name="firstName" class="form-control" placeholder="Enter FirstName" required></b>
	    	</div>
	    	
	    	<div class="col">
			    <h5 style="color:#ffffff;">Last Name:</h5>
			    <b> <input type="text" pattern="[a-zA-Z]+" title="must be alphabets only" name="lastName" class="form-control" placeholder="Enter LastName" required></b>
	    	</div>
	    	
    	</div>

	
  		<div class="row mt-4">
    		<div class="col">
		   		 <h5 style="color:#ffffff;"> Gender: </h5>
			     <select class="form-control" name="gender" id="exampleFormControlSelect1">
				      <option>Male</option>
				      <option>Female</option>
				      <option>Other</option>
			     </select>     
     		</div>
     		
    		<div class="col">
    			<h5 style="color:#ffffff;">DateOfBirth:</h5>
     			<b> <input type="date" name="dob" max="2023-06-04"  class="form-control" placeholder="Enter your Id" required></b>
    		</div>
    		
    		<div class="col">
    			<h5 style="color:#ffffff;">PlaceOfBirth:</h5>
     			<b><input type="text" pattern="[a-zA-Z]+" title="must be alphabets only" name="pob"  class="form-control" placeholder="Enter PlaceOfBirth" required></b>
    		</div>
    		
   		</div>
	
		<div class="row mt-4">
    
	     	<div class="col">
	    		<h5 style="color:#ffffff;">Email Id:</h5>
	     		<b> <input type="email"  name="applicantEmail" class="form-control" placeholder="Enter ApplicantsEmail" required></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5 style="color:#ffffff;">Phone Number:</h5>
	     		<b> <input type="number"  name="phone" class="form-control" placeholder="Enter your Number" min="1000000000" max="9999999999" required></b>
	    	</div>
	    	
    	</div>
	
  		<div class="row mt-4">
	    	<div class="col">
	    		<h5 style="color:#ffffff;">Father Name:</h5>
	     		<b> <input type="text" name="fatherName" pattern="[a-zA-Z]+" title="must be alphabets only"  class="form-control" placeholder="Enter FatherName" required></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5 style="color:#ffffff;">Mother Name:</h5>
	     		<b> <input type="text" name="motherName" pattern="[a-zA-Z]+" title="must be alphabets only" class="form-control" placeholder="Enter MotherName" required></b>
    		</div>
    		
    		<div class="col">
	   			<h5 style="color:#ffffff;">Marital Status: </h5>
		     	<select class="form-control" name="maritalStatus" id="exampleFormControlSelect1">
		     		<option>Single</option>
			     	<option>Married</option>
			        <option>Divorced</option>
			        <option>Widow</option>
		      	</select>     
     		</div>
     		
    	</div>
    	
    	<div class="row mt-4">
	   		<div class="col">
	    		<h5 style="color:#ffffff;">Permanent Address:</h5>
	     		<b> <input type="text" name="permanentAddress" id="pAddress" class="form-control" placeholder="Enter PermanentAddress"  required></b>
	   		</div>
		
    		<div class="col">
	     		<h5 style="color:#ffffff;">Present Address:</h5>
	   			<b> <input type="text" name="presentAddress" id="curAddress" class="form-control" placeholder="Enter PresentAddress" required></b>
	    		<div class="form-group">
	    			<h6 style="color:#ffffff">
	          		<input type="checkbox" id="checkBox"  onclick="autoFilAddress()"> Same as permanent address
	          		</h6>
	        	</div>
	        	
   			</div>
   
  		</div>
 	
 		<div class="row mt-4">
    
	    	<div class="col">
			    <h5 style="color:#ffffff;">Country:</h5>
			    <b> <input type="text" style="width:50%;" name="country" pattern="[a-zA-Z]+" title="must be alphabets only" class="form-control" placeholder="Enter your Country" required></b>
			    <br>
	    	</div>
    
    		<div class="d-flex">
		    	<div class="col">
				    <h5 style="color:#ffffff;" >Upload Aadhar Card:</h5>
				  	<input type="file" id="file" name="file" multiple><br><br>
		    	</div>
     
		     	<div class="col">
		     		<h5 style="color:#ffffff;">Upload Graduation Certificate:</h5>
					<input type="file" id="file" name="file" multiple><br><br>
				</div>		  
	 		</div>
	 	
    	</div>
    
  		<button type="submit"  class="btn btn-primary mt-4 btn-block form-control" >Apply</button><br><br>	 
  	</form>
  </div>
  
	    
<script type="text/javascript">
function autoFilAddress()
    {
       let checkBox= document.getElementById('checkBox');
       let pAddress = document.getElementById("pAddress");
       
       let curAddress = document.getElementById("curAddress");
      
        if (checkBox.checked == true)
        {
        
	       let pAddressValue = pAddress.value;
	       
	       curAddress.value = pAddressValue; 
            
       }
       else
       {
       		curAddress.value = "";
       }
    }
</script>
   
</body>
</html>


