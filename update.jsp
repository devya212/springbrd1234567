<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="navbar1.jsp"%>
<%@page import="com.nucleus.model.Customer" %>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Customer Details</h1>
            <div class="account-wall">
            
                 <form class="form-signin" method="post" action="CustomerController">
                 <c:forEach var="customer1" items="${customer}">
                <label for="code">CUSTOMER CODE</label>
                <input type="text"  class="form-control" id="code" value="${customer1.customerCode}" name="code" readonly required autofocus>
                <label for="cname">NAME</label>
                <input type="text"  class="form-control" id="cname" value="${customer1.customerName}" name="cname" required autofocus>
               
                <label for="caddress1">ADDRESS 1</label>
                 <textarea class="form-control" rows="5" id="caddress1"  name="caddress1" required autofocus>
                 ${customer1.customerAddress1}
                 </textarea>
                
                
                 <label for="caddress2">ADDRESS 2</label>
                 <textarea class="form-control" rows="5" id="caddress2"  name="caddress2">
                 ${customer1.customerAddress2}
                 </textarea>
               <label for="pin">PIN</label>
                <input type="text" name="pin" class="form-control"  id="pin" value="${customer1.customerPinCode}"  required autofocus>
                 <label for="email">EMAIL</label>
                <input type="text" name="email" class="form-control" id="email" value="${customer1.email}"  required autofocus>
                 <label for="contactno">CONTACT NUMBER:</label>
                <input type="text" name="contactno" class="form-control" id="contactno" value="${customer1.contactNo}"  required autofocus>
                 <label for="cperson">PRIMARY CONTACT PERSON</label>
                <input type="text" name="cperson" class="form-control" id="cperson" value="${customer1.primaryContactPerson}"  required autofocus>
                 <label for="flag">FLAG</label>
                <select class="form-control" name="flag" id="flag" value="${customer1.flag}" required autofocus>
                 <option value=""></option>
                 
                 <option value="A" >Active Flag</option>
                   <option value="I" >Inactive Flag</option>
                         
                    </select>
                    <input type="hidden" name="record" value="${customer1.recordStatus}">
                    <input type="hidden" name="createdate" value="${customer1.createDate}">
                    <input type="hidden" name="createdby" value="${customer1.createdBy}">
                    <input type="hidden" name="code1" value="${customer1.customerCode}">
                   </c:forEach>
              <br>
       
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="b1" value="toupdate" onclick="return validateDetails()"> UPDATE</button>
                </form>
                
               </div>
</div>
</div>
</div>

</body>
</html>
