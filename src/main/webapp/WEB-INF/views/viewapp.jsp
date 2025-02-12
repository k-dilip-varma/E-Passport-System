<%@page import="com.wipro.epass.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.wipro.epass.entity.Form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>View</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
		<style>
			body
			{
				background-image:url('/images/img4.jpg');
				background-repeat:no-repeat;
				background-attachment:fixed;
				background-size:100% 100%;
			}
		</style>
	</head>
	<body>
 		<%@include file="header.jsp" %>
		<% int id=(int)request.getAttribute("id"); %>
		<form style="margin-top:50px">
		<h2 style="text-align:center;color:#ffffff;padding-top:30px">View Your Appointment And You Can Change your Appointment Here..</h2>
  		<table class="table table-dark table-striped mt-4">
  			<thead>
    			<tr>
    				<th>Appointment Id</th>
				    <th>Office Name</th>
				    <th>Office Address</th>
				    <th>Date Of Appointment</th>
				    <th>Time Of Appointment</th>
				    <th >Change Appointment</th>
    			</tr>
  		    </thead>
 
  			<tbody>
				  <%
				  Appointment list1=(Appointment) request.getAttribute("appoi");
				  %>
 
   				<tr>
   					<td><%= list1.getAid() %></td>
	 				<td><%=list1.getName() %></td>
	    			<td><%= list1.getOfficeDetails().getAddress() %></td>
	    			<td><%= list1.getAptdate() %></td>
	     			<td><%= list1.getApttime() %></td>
	      
		    		<td> <a  href="/updateappoi/<%=list1.getAid() %>/<%=id %>" >Change</a></td>
    			</tr>
   
  			</tbody>
  
		</table>
		</form>
	</body>
</html>