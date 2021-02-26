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
			<h2>Task ID: ${task.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
			
			
			
				<form:form action = "${pageContext.request.contextPath}/tasks" method="POST" modelAttribute="task">
					<div class="form-group">
						<label for="title">Title</label>
						<form:input path="title" class="form-control" />
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<form:textarea path="description" class="form-control" />
					</div>

<!-- 					selector una opción -->
					<div class="form-group">
						<label for="project">Proyecto</label>
						<form:select class="form-select form-select-lg mb-3" path="project" items="${projects}" itemLabel="name" itemValue="id"></form:select>
					</div>
<!-- 					Selectores múltiples-->
					<div class="form-group">
						<label for="users">User list</label>
						<form:select class="form-select form-select-lg mb-3" path="users" items="${users}" itemLabel="firstName" itemValue="id"></form:select>
					</div>
					<div class="form-group">
						<label for="tags">Tag list</label>
						<form:select class="form-select form-select-lg mb-3" path="tags" items="${tags}" itemLabel="name" itemValue="id"></form:select>
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