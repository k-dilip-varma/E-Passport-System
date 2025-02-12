
<%@page import="com.wipro.epass.entity.Appointment"%>
<%@page import="com.wipro.epass.entity.Form"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Application</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
	
		.login{
			width: 800px;
	        margin-left: 350px;
	    	margin-top: 10px;
	    	border-radius: 20px;
	    	padding: 20px;
	    	color:#24458bf2;
	    	
		}
		body{
			background-image:url('/images/img5.jpg');
			background-repeat:no-repeat;
			background-attachment:fixed;
			background-size:100% 100%;
		}
		@media print{
			body * {
				visibility: hidden;
			}
			.print-section, .print-section * {
				visibility: visible;
			}
			.print-section {
				position: absolute;
				left: 0;
				top: 0;
			}
		}
		
	</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<% Form form=(Form) request.getAttribute("form"); %>
	<% Appointment appointment=(Appointment)request.getAttribute("appointment"); %>
	<h2 style="text-align:center;margin-top:20px;font-size:40px;color:#24458bf2">Application Form</h2>
	<div class="print-section">
	<div class="login" >
		<div class="row">
			<div class="col">
    			<h5>First Name:</h5>
     			<b> <input type="text" value="<%=form.getFirstName() %>" class="form-control" placeholder="Enter Name" readonly></b>
    		</div>
    		
    		<div class="col">
    			<h5>Last Name:</h5>
     			<b> <input type="text" value="<%=form.getLastName() %>" class="form-control" placeholder="Enter Name" readOnly></b>
    		</div>
		</div>
  		<div class="row mt-4">
    
	     	<div class="col">
	    		<h5>Gender:</h5>
	     		<b> <input type="text" value="<%=form.getGender() %>" class="form-control" placeholder="Enter PassengerName" readonly required></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Date Of Birth:</h5>
	     		<b> <input type="date" value="<%=form.getDob() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
	    	
	     	<div class="col">
	    		<h5>Place Of Birth:</h5>
	    		<b>  <input type="text" value="<%=form.getPob() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
    	</div>
    
    	<div class="row mt-4">
			<div class="col">
	    		<h5>Email Id:</h5>
	     		<b> <input type="text" value="<%=form.getApplicantEmail() %>" class="form-control" placeholder="Enter Name" readonly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Phone Number:</h5>
	     		<b> <input type="text" value="<%=form.getPhone() %>" class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
		</div>

	
  		<div class="row mt-4">
	    	<div class="col">
	    		<h5>Father Name:</h5>
	    		<b>  <input type="text" value="<%=form.getFirstName() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Mother Name:</h5>
	     		<b> <input type="text" value="<%=form.getMotherName()  %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Marital Status:</h5>
	     		<b> <input type="text" value="<%=form.getMaritalStatus() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
  		</div>

  		<div class="row mt-4">
	    	<div class="col">
	    		<h5>Present Address:</h5>
	     		<b> <input type="text" value="<%=form.getPresentAddress() %>"  class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Permanent Address:</h5>
	     		<b> <input type="text" value="<%=form.getPermanentAddress() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
  		</div>

  		<div class="row mt-4">
	    	<div class="col">
	    		<h5>Country:</h5>
	     		<b> <input type="text" value="<%=form.getCountry() %>" class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>File Uploaded:</h5>
	     		<b> <input type="text" value="<%=form.getFileName()%>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
  		</div>
  		<br>
		<h3 style="text-align:center;font-size:40px;color:#24458bf2">Appointment Details</h3>
	
		<div class="row mt-4">
	    	<div class="col">
	    		<h5>Office Id:</h5>
	     		<b> <input type="text" value="<%=appointment.getOfficeid() %>" class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Office Name:</h5>
	     		<b> <input type="text" value="<%=appointment.getName() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
  		</div>

		<div class="row mt-4">
   
	    	<div class="col">
	    		<h5>Office Address:</h5>
	    		<b>  <input type="text" style="width:70%" value="<%=appointment.getOfficeDetails().getAddress() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
  		</div>

		<div class="row mt-4">
	    	<div class="col">
	    		<h5>Appointment Date:</h5>
	     		<b> <input type="text" value="<%=appointment.getAptdate() %>" class="form-control" placeholder="Enter Name" readOnly></b>
	    	</div>
	    	
	    	<div class="col">
	    		<h5>Appointment Time:</h5>
	     		<b> <input type="text" value="<%=appointment.getApttime() %>" class="form-control" placeholder="Enter your Id" readOnly></b>
	    	</div>
  		</div>
  	
 		<form action="/home">
	    <button class="btn btn-primary mt-4 btn-block form-control" onclick="window.print()" >Download Application</button>
	    </form>	    
  	</div>
  	</div>
</body>
