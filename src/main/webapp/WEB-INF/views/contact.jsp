<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&family=Josefin+Sans:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
		<jsp:include page="navbar.jsp"></jsp:include>
		<br><br>
		<div style ="text-align: center; " >
<form>
 <div class="mb-6 mt-5">

  <label for="fname"><b>Name:</b></label>
  <input type="text" id="fname" name="fname"><br><br>
  </div>
   <div class="mb-3">
  
  <label for="pin"><b>Email:</label>
  <input type="email" id="pin" name="pin"><br><br>
  </div>
  <input type="submit" value="Submit">
</form>

		</div>	

</body>
</html>