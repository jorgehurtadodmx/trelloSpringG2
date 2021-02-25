<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User creation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
	
	<div class = "pt-5 container">
			<h2>User ID: ${user.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
			
			
			
				<form:form action = "${pageContext.request.contextPath}/users" method="POST" modelAttribute="user">
					<div class="form-group">
						<label for="firstName">Name</label>
						<form:input path="firstName" class="form-control" />
					</div>
					<div class="form-group">
						<label for="lastName">Last Name</label>
						<form:textarea path="lastName" class="form-control" />
					</div>
					<div class="form-group">
						<label for="age">Age</label>
						<form:input type="number" path="age" class="form-control" />
					</div>
					<div class="form-group">
						<label for="email">Email</label>
						<form:input path="email" class="form-control" />
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<form:input path="password" class="form-control" />
					</div>

				
				<form:hidden path="id"/>
				
				<button class = "btn btn-success btn-lg" type = "submit" >Save</button>
				</form:form>
			
			
			

			
			
		
			</div>
		</div>
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</body>
</html>