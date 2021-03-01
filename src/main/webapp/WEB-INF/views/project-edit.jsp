<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
<title>Project creation/modification</title>

</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
			<h2 style = "font-family: 'Josefin Sans', sans-serif;">Project ${project.id}</h2>
	
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8">
				
			
			
				<form:form action = "${pageContext.request.contextPath}/projects" method="POST" modelAttribute="project">
					<div class="form-group">
						<label for="name">Name</label>
						<form:input path="name" class="form-control" />
					</div>
					<div class="form-group">
						<label for="description">Description</label>
						<form:textarea path="description" class="form-control" />
					<%--</div>
				 	<div class="form-group">
						<label for="tasks">Task list</label>
						<form:select path="tasks" items="${tasks}"  
						itemLabel="title" itemValue="id" class="form-control"/>
					</div>--%>
					<div class="form-group">
						<label for="users">User list</label>
						<form:select path="users" items="${users}"  
						itemLabel="firstName" itemValue="id" class="form-control"/>
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