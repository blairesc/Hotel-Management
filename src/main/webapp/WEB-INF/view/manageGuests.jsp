<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Manage Guests</title>
		<jsp:include page="bootstrap.jsp"></jsp:include>
		
		<style>
			.section {
				background-color:#F0FFF0;
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
			<br><small class="text-muted">Manage Guests</small>
		</div>
		<jsp:include page="nav.jsp"></jsp:include>
				<div class="section">
					<c:choose>
						<c:when test="${mode == 'MODE_GUESTS'}">
							<div class="top-section">
								<!-- table -->
								<table class="table table-bordered">
								  <thead>
								    <tr>
								      <th scope="col">Guest Id</th>
								      <th scope="col">Guest Name</th>
								      <th scope="col">Phone Number</th>
								      <th scope="col">Email</th>
								      <th scope="col">Edit</th> 
				      				  <th scope="col">Delete</th>
								    </tr>
								  </thead>
								  <tbody>
									 <c:forEach var="guest" items="${guests}"> 
								    	<tr>
								    		<td>${guest.guestId}</td>
								    		<td>${guest.guestName}</td>
								    		<td>${guest.phoneNumber}</td>
								    		<td>${guest.guestEmail}</td>
								    		<td><a href="update-guest?id=${guest.guestId}"><span class="glyphicon glyphicon-pencil"></span></a></td>
											<td><a href="delete-guest?id=${guest.guestId}"><span class="glyphicon glyphicon-trash"></span></a></td>
								    	</tr>
								    </c:forEach>
								  </tbody>
								</table>
								<!-- end of table -->
							</div>
						</c:when>
						
						<c:when test="${mode == 'GUES_NEW' || mode == 'GUES_UPDATE'}">
							<div class="bottom-section">
								<form method="POST" action="save-guest">
									 <input type="hidden" value="${guest.guestId}" name="guestId">
									  
									  <div class="form-group row">
									    <label for="guestName" class="col-sm-2 col-form-label">Guest Name:</label>
									    <div class="col-sm-10">
									      <input type="text" class="form-control" value="${guest.guestName}" name="guestName" placeholder="Guest Name">
									    </div>
									  </div>
									  
									  <div class="form-group row">
									    <label for="phoneNumber" class="col-sm-2 col-form-label">Phone Number:</label>
									    <div class="col-sm-10">
									      <input type="text" class="form-control" value="${guest.phoneNumber}" name="phoneNumber" placeholder="Phone Number">
									    </div>
									  </div>
									  
									  <div class="form-group row">
									    <label for="guestEmail" class="col-sm-2 col-form-label">Email:</label>
									    <div class="col-sm-10">
									      <input type="text" class="form-control" value="${guest.guestEmail}" name="guestEmail" placeholder="Email">
									    </div>
									  </div>					  
						
									  <div class="form-group row">
									    <div class="col-sm-10">
									      <button type="submit" class="btn btn-info btn-lg">Save</button>
									    </div>
									  </div>
								</form>
							</div>
						</c:when>
					</c:choose>
			</div>
			<a class="btn btn-light btn-sm" href="/welcome">Back</a>
	</body>
</html>