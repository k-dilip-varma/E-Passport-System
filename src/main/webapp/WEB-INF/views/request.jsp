<%@page import="java.util.List"%>
<%@page import="com.wipro.epass.entity.Form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passport Services</title>
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

	<form style="margin-top:50px">
	<h1 style="text-align:center;color:#ffffff; padding-top: 30px">Select Your Application</h1>
  	<table class="table table-bordered table-primary mt-4">
	  	<thead>
	    	<tr>
	    		  <th>ApplicationId</th>
			      <th>Name</th>
			      <th>Gender</th>
			      <th>DateOfBirth</th>
			      <th>FileName</th>
			      <th>Address</th>
	      
	      		  <th >Select Application</th>
	       </tr>
	    </thead>
	 
	  	<tbody>
		  <%
		  List<Form> list1=(List<Form>) request.getAttribute("list");
		  %>
		 
	  	  <% for(int i=0;i<list1.size();i++) {%>
	   		<tr>
		   		<td><%= list1.get(i).getFid() %></td>
			 	<td><%=list1.get(i).getFirstName()+" "+list1.get(i).getLastName() %></td>
			    <td><%= list1.get(i).getGender() %></td>
			    <td><%= list1.get(i).getDob()%></td>
			    <td><%= list1.get(i).getFileName() %></td>
			    <td><%= list1.get(i).getPermanentAddress() %></td>
			    
				
				<td> <a  href="/select/<%=list1.get(i).getFid() %>" >Select Application</a></td>	
	    	</tr>
	      <% } %>
	  	</tbody>
  
	</table>
	</form>
</body>
</html>