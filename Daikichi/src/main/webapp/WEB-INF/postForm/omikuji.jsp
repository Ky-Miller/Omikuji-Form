<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>omikuji</title>
</head>
<div class="card text-white bg-success">
<h1>Here's Your Omikuji!</h1>
<div class="card-body">
<h3>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/>
 with <c:out value="${person}"/> as your roommate, selling <c:out value="${goal}"/>
 for a living. The next time you see a <c:out value="${thing}"/>, you will have good luck.
 Also, <c:out value="${complement}"/></h3>
 <a href="/omikuji">go back</a>
</div>
</div>
</html>