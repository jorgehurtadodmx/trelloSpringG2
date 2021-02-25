<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vista de usuarios individualmente</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	
	<div class = "pt-5 container">
			<h2>Task ID: ${task.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8 mb-5">
					<p><b>Name</b>: ${task.title}</p>
					<p><b>Description</b>: ${task.description}</p>
					
					<p><b>Belongs to Project:</b>: ${task.project.name}</p>
					
					<h3>Assigned Users</h3>
					
					<ul>
						<c:forEach items="${task.users}" var="user">
							<li> <a href="${pageContext.request.contextPath}/users/${user.id}/view">${user.firstName}</a> </li>
						</c:forEach>
					</ul>
					
					
					
					<h3>Assigned Tags</h3>
					
					<ul>
						<c:forEach items="${task.tags}" var="tag">
							<li> <a href="${pageContext.request.contextPath}/tasks/${task.id}/view">${tag.name}</a> </li>
						</c:forEach>
					</ul>
					
					<div class="mt-5">
			<a class="btn btn-info" href = "${pageContext.request.contextPath}/tasks">Volver</a> 
			<a class="btn btn-success" href = "${pageContext.request.contextPath}/tasks/${user.id}/edit">Editar</a> 
			<a class="btn btn-danger" href = "${pageContext.request.contextPath}/tasks/${user.id}/delete">Borrar</a>

			
			</div>
			</div>

		</div>
	</div>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>