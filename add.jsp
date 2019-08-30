<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@taglib uri="http://www.springframework.org/tags" prefix="msg" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="s" %>

 <msg:url value="/resources/sty.css" var="mainCss1"/>
 <msg:url value="/resources/CustomerDetailsValidate.js" var="mainjs"/>
 <script type="text/javascript" src="${mainjs}"></script>
<%@include file="navbar.jsp" %>
<link rel="stylesheet" href="${mainCss1}">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Customer Details</h1>
            <div class="account-wall">
              
                <s:form class="form-signin" method="post" action="saveCustomer" modelAttribute="customer2">
                <s:label path="code">CUSTOMER CODE</s:label>
                <s:input path="customerCode" class="form-control" id="code" placeholder="Customer Code" required autofocus/>
                <s:label path="name">NAME</s:label>
                <s:input type="text" path="customerName" class="form-control" id="cname" placeholder="Customer Name" required autofocus/>
               
                <s:label path="caddress1">ADDRESS 1</s:label>
                 <s:textarea class="form-control" rows="5" id="caddress1" path="customerAddress1" required autofocus></s:textarea>
                
                
                 <s:label path="caddress2">ADDRESS 2</s:label>
                 <s:textarea class="form-control" rows="5" id="caddress2" path="customerAddress2"></s:textarea>
               <s:label path="pin">PIN</s:label>
                <s:input type="text" path="customerPinCode" class="form-control"  id="pin" placeholder="pin" required autofocus/>
                 <s:label path="email">EMAIL</s:label>
                <s:input type="text" path="email" class="form-control" id="email" pattern='\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*' placeholder="Email" required autofocus/>
                 <s:label path="contactno">CONTACT NUMBER:</s:label>
                <input type="text" path="contactNo" class="form-control" id="contactno" pattern='[7-9]{1}[0-9]{9}' placeholder="Contact no" required autofocus/>
                 <s:label path="cperson">PRIMARY CONTACT PERSON</s:label>
                <s:input type="text" path="primaryContactPerson" class="form-control" id="cperson" placeholder="Contact person" required autofocus/>
                 <s:label path="flag">FLAG</s:label>
                <s:select class="form-control" path="flag" id="flag" required autofocus>
                 <s:option value=""></s:option>
                 
                 <s:option value="A" label="Active Flag"></s:option>
                   <s:option value="I" label="Inactive Flag"></s:option>
                         
                    </s:select>
                   
              <br>
       
                <button class="btn btn-lg btn-primary btn-block" type="submit" name="b1" value="add" onclick="return validateDetails()">ADD DETAILS</button>
                </s:form>
               </div>
</div>
</div>
</div>

</body>
</html>




