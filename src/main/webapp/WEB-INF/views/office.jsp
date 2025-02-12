<%@page import="com.wipro.epass.entity.OfficeDetails"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Passport Office</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<%@include file="header.jsp" %>
	<% int id1=(int)request.getAttribute("id"); %>
	<form style="margin-top:50px">
	<h2 style="text-align:center;color:black">Select Passport Office For Appointment</h2>
  	<table class="table table-dark table-striped mt-5">
  		<thead>
    		<tr>
    			<th>OfficeId</th>
      			<th>OfficeName</th>
      			<th>Jurisdiction</th>
      			<th>Address</th>
      			<th>Phone Number</th>
      			<th>Select Office</th>
    		</tr>
  		</thead>
 
  		<tbody>
  			<% List<OfficeDetails> list1=(List<OfficeDetails>) request.getAttribute("list"); %>
 
  			<% for(int i=0;i<list1.size();i++) {%>
  		 	<tr>
   				<td><%= list1.get(i).getId() %></td>
	 			<td><%=list1.get(i).getOffname() %></td>
	    		<td><%= list1.get(i).getJurisdictionname() %></td>
	    		<td><%= list1.get(i).getAddress() %></td>
	     		<td><%= list1.get(i).getContact() %></td>
		    	<td> <a  href="/appointment/<%=list1.get(i).getId() %>/<%=id1 %>" >Select Office</a></td>
    		</tr>
    		<% } %>
  		</tbody>
  
	</table>
	</form>
</body>
</html>