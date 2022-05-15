<%@ page import="com.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer Registration</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/validation.js"></script> 
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-8"> 
			<h1>customer Information</h1>
				<form id="formCustomer" name="formCustomer" method="post" action="Customer.jsp">  
					Customer Name:  
 	 				<input id="cName" name="cName" type="text"  class="form-control form-control-sm">
					<br>Customer Address:   
  					<input id="cAddress" name="cAddress" type="text" class="form-control form-control-sm">   
  					<br>Customer NIC:   
  					<input id="cNic" name="cNic" type="text"  class="form-control form-control-sm">
  					<br>Customer Gender:   
  					<input id="cGen" name="cGen" type="text"  class="form-control form-control-sm">
					<br>Customer Email  
					<input id="cEmail" name="cEmail" type="text" class="form-control form-control-sm">
					<br>Customer Number
					<input id="cCNo" name="cCNo" type="text" class="form-control form-control-sm">
					<br>
					<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">  
					<input type="hidden" id="hidCustomerIDSave" name="hidCustomerIDSave" value=""> 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"> </div>
				
			   <div id="alertError" class="alert alert-danger"></div>
				
			   <br>
			   
				
				
				
				 <div id="divCustomerGrid">
					<%
					    Customer customerObj = new Customer();
						out.print(customerObj.readCustomer());
					%>
				</div>
			</div>
		</div>
</div>
 
</body>
</html>