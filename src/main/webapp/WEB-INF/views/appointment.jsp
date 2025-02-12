
<%@page import="com.wipro.epass.entity.OfficeDetails"%>
<%@page import="com.wipro.epass.entity.Form"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Appointment</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
	<style>
	
		.login{
			width: 600px;
	        margin-left: 436px;
	    	margin-top: 10px;
	    	border-radius: 20px;
	    	padding: 20px;
	    	
		}
		body{
			background-image:url('/images/img6.jpg');
			background-repeat:no-repeat;
			background-attachment:fixed;
			background-size:100% 100%;
		}
		
	</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<% Form form=(Form) request.getAttribute("form"); %>
	<% OfficeDetails ofDetails=(OfficeDetails)request.getAttribute("details"); %>
	<% String email=(String) request.getAttribute("email"); %>
	<h2 style="text-align:center;margin-top:100px;font-size:50px;color:#ffffff; padding-top:20px">Request Appointment</h2>
	
	<form action="/requestappointment/<%= form.getFid() %>/<%=ofDetails.getId() %>" method="post" >	
	<div class="login" style="color:black">
	
		<div class="col">
    		<h3></h3>
     		<b> <input type="hidden" name="email" value="<%= email %>" name="passengername" class="form-control" placeholder="Enter PassengerName" required></b>
    	</div>
	 

  		<div class="row  mt-4 ">
    
     		<div class="col">
    			<h5 style="color:#ffffff">Office Id:</h5>
    			<b> <input type="text" style="width:70%" name="officeid" value="<%= ofDetails.getId() %>" name="passengername" class="form-control" placeholder="Enter PassengerName" readonly></b>
    		</div>
	    <!--  
	    <div class="col">
	    <h5>FormId:</h5>
	     <b> <input type="number" name="formid" value="<%= form.getFid() %>" class="form-control" placeholder="Enter your Id" readonly></b>
	    </div>
	    -->
    	</div>

	
  		<div class="row mt-4">
    		<div class="col">
    			<h5 style="color:#ffffff">Office Name:</h5>
   				 <b>  <input type="text" name="name" value="<%=ofDetails.getOffname() %>"  class="form-control" placeholder="Enter Name" readonly ></b>
    		</div>
    		
    		<div class="col">
    			<h5 style="color:#ffffff">Office Address:</h5>
     			<b> <input type="text" name="officeadd" value="<%= ofDetails.getAddress()  %>" class="form-control" placeholder="Enter your Id" readonly ></b>
    		</div>
  		</div>

  		<div class="row  mt-4">
    		<div class="col">
    			<h5 style="color:#ffffff">Appointment Date:</h5>
     			<b> <input type="date" name="aptdate"  class="form-control" min="2023-06-09" placeholder="Enter AppointmentDate" ></b>
    		</div>
    		
    		<div class="col">
    			<h5 style="color:#ffffff">Appointment Time:</h5>
     			<b> <input type="time" name="apttime" class="form-control" min="09:00" max="18:00" placeholder="Enter your Appointment Time" ></b>
    			<br>
    		</div>
  		</div>
		<br>
	    <button type="submit" class="btn btn-primary" Style="margin-top:10px;margin-left:10px">Request Appointment</button>
	</div>
    </form>
</body>
