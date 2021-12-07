<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Omikuji</title>
</head>
<body>
	<div class="container mt-5">
		<h1 class="mb-4">Here's Your Omikuji!</h1>
		<div class="bg-info col-3">
			<p class="mb-0">In ${number} years, you will live in ${city} with ${person} as your roommate, </p>
			<p class="mb-0">${hobby} for a living. The next time you see a ${thing}, you will have good luck. </p>
			<p>Also, ${nice}.</p>
		</div>
		<div class="mt-5">
			<form action="/omikuji">
				<button type="submit" class="btn btn-secondary">Go Back</button>
			</form>
		</div>
	</div>
</body>
</html>