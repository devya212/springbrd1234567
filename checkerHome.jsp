<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="navbar3.jsp" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body style="background-size:cover;height:100%;width:100%;background-image:url(vg1.jpg);">
<c:if test="${not empty err1}">
   <script type="text/javascript"> alert("${err1}");</script>
    </c:if>
    <c:if test="${not empty err2}">
   <script type="text/javascript"> alert("${err2}");</script>
    </c:if>
 
</body>
</html>