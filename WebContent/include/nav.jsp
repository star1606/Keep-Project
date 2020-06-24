<%@ page import ="com.cos.keep.model.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
            border-bottom: 1px solid #5F6368;
            
        }
        
        .bg-custom
        {
 	  	 background-color: #202124;
    	}
    	
    	html body {
			background-color: #202124;
		}
    	
    	.navbar-nav > li{
	 	   padding-left:5px;
 	 	   padding-right:5px;
		}
    	
</style>

<body>
   <nav class="navbar navbar-expand-md bg-custom navbar-dark ">
		<!-- Brand -->
		
		<a class="navbar-brand" href="#">Keep</a>

		<!-- Toggler/collapsibe Button -->
		
		<c:if test="${not empty sessionScope.principal.id }">
			<form class="form-inline" action="">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-success" type="submit">Search</button>
			</form>
		 </c:if>
		
		
		
		<!-- Navbar links -->
		<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
			<c:if test="${not empty sessionScope.principal.id }">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link " href="/keep/memo/main.jsp">메모</a></li>
					<li class="nav-item" style="padding-right:30px;"  ><a class="nav-link" href="/keep/memo/reminder.jsp">리마인더</a></li>
					
				</ul>
			</c:if>				
		</div>
			<a class="navbar-brand" href="#">
			 <img src=""
			 style ="border-radius:15px"
			 onerror="this.src='/keep/static/image/userProfile.png'"
			 src="" width = "30px" height="30px" />
		</a>	
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>