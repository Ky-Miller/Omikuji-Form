<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Omikuji</title>
</head>
<body>
<h1>send an Omikuji!</h1>

<form action="/omikuji/submit" method=post>
<div>
<label for="number" class="form-label">pick any number from 5 to 25</label>
<input type="number" class="form-control" id="number" name="number" min=5 max=25>
</div>
<div>
<label for="city" class="form-label">Enter the name of any city</label>
<input type="text" class="form-control" id="city" name="city">
</div>
<div>
<label for="person" class="form-label">Enter the name of any real person</label>
<input type="text" class="form-control" id="person" name="person">
</div>
<div>
<label for="goal" class="form-label">Enter professional endeavor or hobby</label>
<input type="text" class="form-control" id="goal" name="goal">
</div>
<div>
<label for="thing" class="form-label">Enter any type of living thing</label>
<input type="text" class="form-control" id="thing" name="thing">
</div>
<div>
<label for="complement" class="form-label">Say something nice to someone</label>
<input type="text" class="form-control" id="complement" name="complement" aria-describedby="formMessage">
<div class="form-text" id="formMessage" >Send and show a friend</div>
</div>
<button type="submit" class="btn btn-primary">Send</button>
</form>
</body>
</html>