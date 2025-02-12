
<%@page import="com.wipro.epass.entity.Appointment"%>
<%@page import="com.wipro.epass.entity.OfficeDetails"%>
<%@page import="com.wipro.epass.entity.Form"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update</title>
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
			background-image:url('/images/img8.jpg');
			background-repeat:no-repeat;
			background-attachment:fixed;
			background-size:100% 100%;
		}
		.col
		{
			color:#ffffff;
		}
		
	</style>
</head>
<body>
	<%@include file="header.jsp" %>
	<% Appointment form=(Appointment) request.getAttribute("appoi"); %>
	<% int id=(int)request.getAttribute("id"); %>
	<h2 style="text-align:center;margin-top:20px;font-size:50px;color:#ffffff">Update Appointment</h2>
	
	<form action="/update/<%= form.getAid() %>/<%=form.getFormid().getFid() %>" method="post" >	
	<div class="login" >
	
  		<div class="row">
    
     		<div class="col">
    			<h5>Office Id:</h5>
     			<b> <input type="text" name="officeid" value="<%= form.getOfficeid() %>" name="passengername" class="form-control" placeholder="Enter PassengerName" readonly></b>
    		</div>
    		
    		<div class="col">
    			<h5>Office Name:</h5>
     			<b> <input type="text" name="name" value="<%= form.getName() %>" class="form-control" placeholder="Enter your Id" readonly ></b>
    		</div>
    	</div>
  
    	<div class="col mt-4">
    		<h5>Office Address:</h5>
     		<b> <input type="text" name="officeadd" value="<%= form.getOfficeDetails().getAddress()  %>" class="form-control" placeholder="Enter your Id" readonly></b>
    	</div>
  

  		<div class="row mt-4">
    		<div class="col">
    			<h5>Appointment Date:</h5>
     			<b> <input type="date" name="aptdate" value="<%= form.getAptdate() %>" min="2023-06-09"  class="form-control" placeholder="Enter Name" ></b>
    		</div>
    		<div class="col">
    			<h5>Appointment Time:</h5>
     			<b> <input type="time" name="apttime" value="<%= form.getApttime() %>"  class="form-control" min="09:00" max="18:00" placeholder="Enter your Id" ></b>
    		</div>
  		</div>
  		
		<div style="color:white">
			<h6>You can Update your appointment upto 5 times</h6>
		</div>
 
	    <button type="submit" class="btn btn-primary" Style="margin-top:20px;margin-left:200px">Update Appointment</button>
	</div>
    </form>
</body>
