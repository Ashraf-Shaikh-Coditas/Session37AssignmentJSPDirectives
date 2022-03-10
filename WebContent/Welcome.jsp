<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<script>
	function insertImages() {
	  a1 = new Image; a1.src = 'img1.jpg';  
	  a2 = new Image; a2.src = 'img2.jpg';
	  a3 = new Image; a3.src = 'img3.jpg';
	}
	function getImage(image) {
	  document.getElementById(image[0]).src = eval(image + ".src")
}
</script>
</head>
<body onLoad="insertImages()">
<jsp:include page="Header.jsp" />
<% 
	String name = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(name.equals(password)) {
		out.println("Welcome");
		%>
		<form autocomplete="off">
		  Cat Image 1 :<input type="radio" name="1" onClick="getImage('a1');" checked><br>
		  Cat Image 2 :<input type="radio" name="1" onClick="getImage('a2');"><br>
		  Cat Image 3 :<input type="radio" name="1" onClick="getImage('a3');"><br>
		</form>
		<img id="a" src="img1.jpg" width="200px" height="200px" >
<% 	
	} else {
		out.println("Wrong Credentials");
	}
	
%>
<jsp:include page="Footer.jsp" />
</body>
</html>