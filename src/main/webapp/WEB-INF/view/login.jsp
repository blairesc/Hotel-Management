<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
		
		<title>Log In</title>
		
		<!-- styles -->	
		<style>
			html,
			body {
			  height: 100%;
			}
			
			body {
			  display: -ms-flexbox;
			  display: -webkit-box;
			  display: flex;
			  -ms-flex-align: center;
			  -ms-flex-pack: center;
			  -webkit-box-align: center;
			  align-items: center;
			  -webkit-box-pack: center;
			  justify-content: center;
			  padding-top: 40px;
			  padding-bottom: 40px;
			  background-color: #f5f5f5;
			}
			
			.form-signin {
			  width: 100%;
			  max-width: 330px;
			  padding: 15px;
			  margin: 0 auto;
			}
			.form-signin .form-control {
			  position: relative;
			  box-sizing: border-box;
			  height: auto;
			  padding: 10px;
			  font-size: 16px;
			}
			.form-signin .form-control:focus {
			  z-index: 2;
			}
			.form-signin input[type="text"] {
			  margin-bottom: -1px;
			  border-bottom-right-radius: 0;
			  border-bottom-left-radius: 0;
			}
			.form-signin input[type="password"] {
			  margin-bottom: 10px;
			  border-top-left-radius: 0;
			  border-top-right-radius: 0;
			}
			.form-signin .form-check .form-check-label {
			  font-size: 18px;
			}
		</style>
		<!-- end of styles -->	
	</head>
	
	<body class="text-center">
	<!-- log in form -->	
	    <form class="form-signin" method="POST" action="/login-user">
	      <img class="mb-4" src="https://cdn2.iconfinder.com/data/icons/travel-caramel-vol-1/256/5_STARS_HOTEL-512.png" alt="Hotel" width="72" height="72">
	      <h1 class="h3 mb-3 font-weight-normal">Please Log in</h1>
	      
	      <!-- user name input -->	
	      <label for="userName" class="sr-only">User Name</label>
	      <input type="text" name="userName" class="form-control" value="${user.userName}" placeholder="User Name" required autofocus>
	      <br>
	      <!-- end of user name input -->	
	      
		  <!-- password input -->	
	      <label for="password" class="sr-only">Password</label>
	      <input type="password" name="password" class="form-control" value="${user.password}" placeholder="Password" required>
	      <br>
	      <!-- end of password input -->	
	       
	      <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
	   </form>
	   <!-- end of log in form -->	
  </body>
</html>