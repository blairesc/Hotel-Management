<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Manage Reservations</title>
		<jsp:include page="bootstrap.jsp"></jsp:include>
		
		<style>
			.section {
				background-color:#F0F8FF;
				display:flex;
			}
			.bottom-section {
				flex:1;
				padding:12px;
			}
			.top-section {
				flex:1;
				padding:12px
			}
		</style>
	</head>
	<body>
		<div class="text-center">
			<h1>
			  Welcome
			</h1>
			<br><small class="text-muted">Manage Reservations</small>
		</div>
		<jsp:include page="navRes.jsp"></jsp:include>
		<div class="section">
			<c:choose>
				<c:when test="${mode == 'MODE_RESERVATIONS'}">
				<div class="top-section">
					<!-- table -->
					<table class="table table-bordered">
					  <thead>
					    <tr>
					      <th scope="col">Reservation Id</th>
					      <th scope="col">Room Number</th>
					      <th scope="col">Check In</th>
					      <th scope="col">Check Out</th>
					      <th scope="col">Guest Id</th>
					      <th scope="col">Edit</th> 
					      <th scope="col">Delete</th>
					    </tr>
					  </thead>
					  <tbody>
						  <c:forEach var="reservation" items="${reservations}" > 
						    	<tr>
						    		<td>${reservation.reservationId}</td>
						    		<td>${reservation.roomNumber}</td>
						    		<td>${reservation.checkInDate}</td>
						    		<td>${reservation.checkOutDate}</td>
						    		<td>${reservation.guest.guestId}</td>
						    		<td><a href="update-reservation?id=${reservation.reservationId}"><span class="glyphicon glyphicon-pencil"></span></a></td>
									<td><a href="delete-reservation?id=${reservation.reservationId}"><span class="glyphicon glyphicon-trash"></span></a></td>
						    	</tr>
						    </c:forEach>
					  </tbody>
					</table>
					<!-- end of table -->
					<a class="btn btn-light btn-sm" href="/welcome">Back</a>
				</div>
				</c:when>
				
				<c:when test="${mode == 'RES_NEW' || mode == 'RES_UPDATE'}">
					<div class="bottom-section">
						<!-- form -->
						<form method="POST" action="save-reservation">
							  <input type="hidden" value="${reservation.reservationId}" name="reservationId">
							  
							  <div class="form-group row">
							    <label for="guestId" class="col-sm-2 col-form-label">Guest Id:</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" value="${reservation.guest.guestId}" name="guestId" placeholder="Guest Id">
							    </div>
							  </div>
							  
							  <div class="form-group row">
							    <label for="roomNumber" class="col-sm-2 col-form-label">Room Number:</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" value="${reservation.roomNumber}" name="roomNumber" placeholder="Room Number">
							    </div>
							  </div>
							  
							  <div class="form-group row">
							    <label for="checkInDate" class="col-sm-2 col-form-label">Check In Date:</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" value="${reservation.checkInDate}" name="checkInDate" placeholder="Check In Date">
							    </div>
							  </div>
							  
							  <div class="form-group row">
							    <label for="checkOutDate" class="col-sm-2 col-form-label">Check Out Date:</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" value="${reservation.checkOutDate}" name="checkOutDate" placeholder="Check Out Date">
							    </div>
							  </div>
							  
				
							  <div class="form-group row">
							    <div class="col-sm-10">
							      <button type="submit" class="btn btn-info btn-lg">Save</button>
							    </div>
							  </div>
							  <a class="btn btn-light btn-sm" href="/reservations">Back</a>
						</form>
						<!-- end of form -->
					</div>
				</c:when>
			</c:choose>
		</div>
	</body>
</html>