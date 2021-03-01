<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Project list</title>
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">

</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	
	<div class = "pt-5 container">
		
		<h1 style = "font-family: 'Josefin Sans', sans-serif;">Project list</h1>
		<hr/>
		
		<p>${NOTIFICATION}</p>
		
		<p>
			<a class = "btn btn-primary" href="${pageContext.request.contextPath}/projects/new">Add project</a>
			<a class = "btn btn-danger" href="${pageContext.request.contextPath}/projects/delete/all">Delete all projects</a>
			
		</p>
	
		<table class = "table table-striped table-bordered" >
			
			<tr class = "thead-dark">
				<th >Name</th>
				<th>Description</th>
				<th>User list</th>
				<th>Tasks List</th> 
				<th>Actions</th>
			</tr>
			
			<c:forEach items="${project}" var="project">
			
				<tr>
					<td>${project.name}</td>
					<td>${project.description}</td>
					<td>
					
						<c:forEach items="${project.users}" var="user">
							<span class="badge bg-success text-white">${user.firstName}</span>
						</c:forEach>

					</td>
					<td>
					
						<c:forEach items="${project.tasks}" var="task">
							<span class="badge bg-info text-black">${task.title}</span>
						</c:forEach>

					</td>


					<td> 
						<a class="btn btn-info" href = "${pageContext.request.contextPath}/projects/${project.id}/view">View</a> 
						<a class="btn btn-success" href = "${pageContext.request.contextPath}/projects/${project.id}/edit">Edit</a> 
						<a class="btn btn-danger" href = "${pageContext.request.contextPath}/projects/${project.id}/delete">Delete</a>
						 
					</td>
				</tr>
				
			</c:forEach>
			
		</table>
		
	</div>
<jsp:include page="footer.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>