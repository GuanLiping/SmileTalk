<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>My JSP 'showCountry.jsp' starting page</title>
  </head>
  
  <body>
    <h1>Information</h1>
    <c:forEach var="country" items="${list}">
    ${country.coName} |${country.coId}<br/>
    </c:forEach>
  </body>
</html>
