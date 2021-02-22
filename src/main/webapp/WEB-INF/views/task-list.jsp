<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Smartphone List | Awesome App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

</head>
<body>
	
	<div class = "pt-5 container">
		
		<h1>Tareas</h1>
		<hr/>
		
		<p>${NOTIFICATION}</p>
		
		<p>
			<a class = "btn btn-primary" href="${pageContext.request.contextPath}/tasks/new">AÑADIR Tarea</a>
			<a class = "btn btn-danger" href="${pageContext.request.contextPath}/tasks/delete/all">BORRAR Tareas</a>
			
		</p>
	
		<table class = "table table-striped table-bordered">
			
			<tr class = "thead-dark">
				<th>Title</th>
				<th>Description</th>
				<th>User</th>
				<th>Project</th>
				<th>Tags</th>
				<th>Actions</th>
			</tr>
			
			<c:forEach items="${tasks}" var="task">
			
				<tr>
					<td>${task.title}</td>
					<td>${task.description}</td>
					<td>${task.user.name}</td>
					<td>${task.project.name}</td>
					<td>
					
						<c:forEach items="${task.tags}" var="etiqueta">
							<span class="badge bg-success text-white">${etiqueta.name}</span>
						</c:forEach>

					</td>
					
					<td> 
						<a class="btn btn-info" href = "${pageContext.request.contextPath}/tasks/${task.id}/view">Ver</a> 
						<a class="btn btn-success" href = "${pageContext.request.contextPath}/tasks/${task.id}/edit">Editar</a> 
						<a class="btn btn-danger" href = "${pageContext.request.contextPath}/tasks/${task.id}/delete">Borrar</a>
						 
					</td>
				</tr>
				
			</c:forEach>
			
		</table>
		
	</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>