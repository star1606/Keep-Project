<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Keep</title>
</head>

<style>
        .navbar
        {
            border-bottom: 2px solid #5F6368;
            
        }
        
        .bg-custom
        {
 	  	 background-color: #202124;
    	}
    	
    	html body {
			background-color: #202124;
		}
    	
</style>

<body>
   	
	<nav class="navbar navbar-expand-md bg-custom navbar-dark ">
		<!-- Brand -->
		
		<a class="navbar-brand" href="#">Keep</a>

		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<form class="form-inline" action="/action_page.php">
			<input class="form-control mr-sm-2" type="text" placeholder="Search">
			<button class="btn btn-success" type="submit">Search</button>
		</form>

		<!-- Navbar links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			</ul>
		</div>

		<a class="navbar-brand" href="#"> <img src="bird.jpg" alt="Logo"
			style="width: 40px;">
		</a>	
	</nav>
	
	<br/>
	<br/>
	<br/>
	
	<!-- 메모하기 -->	
<form action="">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="제목" id="memo">
    <input type="text" class="form-control" placeholder="내용" id="memo">
  </div>
  <div class="form-group">  
    <input type="text" class="form-control" placeholder="메모 내용" id="memo2">
  </div>
</form>		













</body>





</html>