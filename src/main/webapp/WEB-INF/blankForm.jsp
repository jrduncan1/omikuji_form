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
		<h1>Send an Omikuji!</h1>
		<div class="mt-3 col-3">
			<form action="/processForm" class="form" method="post">
				<div class="my-1">
					<label for="number" class="form-label fw-light">Pick any number from 5 to 25:</label>
					<select class="form-select form-control" name="number">
						<option value="" disabled selected>Select from dropdown...</option>
						<c:forEach var="number" begin="5" end="25">
							<option value="${number}">${number}</option>
						</c:forEach>
					</select>
				</div>
				<div class="mt-4">
					<label class="form-label fw-light">Enter the name of any city:</label>
					<input type="text" class="form-control" name="city">
				</div>
				<div class="mt-4">
					<label class="form-label fw-light">Enter the name of any person:</label>
					<input type="text" class="form-control" name="person">
				</div>
				<div class="mt-4">
					<label class="form-label fw-light">Enter professional endeavor or hobby:</label>
					<input type="text" class="form-control" name="hobby">
				</div>
				<div class="mt-4">
					<label class="form-label fw-light">Enter any type of living thing:</label>
					<input type="text" class="form-control" name="thing">
				</div>
				<div class="mt-4">
					<label class="form-label fw-light">Say something nice to someone:</label>
					<textarea class="form-control" name="nice" rows="5"></textarea>
				</div>
				<div class="mt-3">
					<label class="form-label fw-light fst-italic">Send and show a friend:</label>
				</div>
				<div>
					<button type="submit" class="btn btn-primary">Send</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>