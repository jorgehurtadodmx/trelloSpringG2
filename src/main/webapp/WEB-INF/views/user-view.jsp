<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User view</title>
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
	<div class = "pt-5 container">
			<h2 style = "font-family: 'Josefin Sans', sans-serif;">User ${user.id}</h2>
			<hr>
		<div class = " row justify-content-center">

			<div class = "col-md-8 mb-5">
					<p><b>First Name</b>: ${user.firstName}</p>
					<p><b>Last Name</b>: ${user.lastName}</p>
					<p><b>Age</b>: ${user.age}</p>
					<p><b>Email</b>: ${user.email}</p>
<%-- 					<p><b>Password</b>: ${user.password}</p> --%>
					
					
					<h3>Assigned Projects</h3>
					
					<ul>
						<c:forEach items="${user.projects}" var="project">
							<li> <a href="${pageContext.request.contextPath}/projects/${project.id}/view">${project.name}</a> </li>
						</c:forEach>
					</ul>
					
					<div class="mt-5">
			<a class="btn btn-info" href = "${pageContext.request.contextPath}/users">Go back</a> 
			<a class="btn btn-success" href = "${pageContext.request.contextPath}/users/${user.id}/edit">Edit</a> 
			<a class="btn btn-danger" href = "${pageContext.request.contextPath}/users/${user.id}/delete">Delete</a>

			
			</div>
			</div>

		</div>
	</div>
	

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>