<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Management</title>
		<jsp:include page="bootstrap.jsp"></jsp:include>
	</head>
	<body>
		<div class="text-center">
			<h1>
			  Welcome
			  <br><small class="text-muted">Select management</small>
			</h1>
		</div>
		<jsp:include page="nav.jsp"></jsp:include>
		<div style="margin-top:10%;">
			<a class="btn btn-primary btn-lg btn-block" href="/guests">Guests</a>
			<a class="btn btn-primary btn-lg btn-block" href="/reservations">Reservations</a>
		</div>
	</body>
</html>