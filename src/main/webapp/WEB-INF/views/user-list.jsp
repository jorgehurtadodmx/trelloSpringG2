<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>User list</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	
	<div class = "pt-5 container">
		
		<h1>User list</h1>
		<hr/>
		
		<p>${NOTIFICATION}</p>
		
		<p>
			<a class = "btn btn-primary" href="${pageContext.request.contextPath}/users/new">AÑADIR Tarea</a>
			<a class = "btn btn-danger" href="${pageContext.request.contextPath}/users/delete/all">BORRAR Tareas</a>
			
		</p>
	
		<table class = "table table-striped table-bordered">
			
			<tr class = "thead-dark">
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>Email</th> 
				<th>Password</th>
				<th>Project List</th>
				<th>Actions</th>
			</tr>
			
			<c:forEach items="${users}" var="user">
			
				<tr>
					<td>${user.firstName}</td>
					<td>${user.lastName}</td>
					<td>${user.age}</td>
					<td>${user.email}</td>
					<td>${user.password}</td>
					<td>
					
						<c:forEach items="${user.projects}" var="project">
							<span class="badge bg-success text-white">${project.name}</span>
						</c:forEach>

					</td>
					
					<td> 
						<a class="btn btn-info" href = "${pageContext.request.contextPath}/users/${user.id}/view">Ver</a> 
						<a class="btn btn-success" href = "${pageContext.request.contextPath}/users/${user.id}/edit">Editar</a> 
						<a class="btn btn-danger" href = "${pageContext.request.contextPath}/users/${user.id}/delete">Borrar</a>
						 
					</td>
				</tr>
				
			</c:forEach>
			
		</table>
		
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>