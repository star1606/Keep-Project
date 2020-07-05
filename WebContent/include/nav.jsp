<%@ page import="com.cos.keep.model.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- search bootstrap -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<!-- <!-- modal library -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<title>Keep</title>

<style>
.navbar {
	border-bottom: 1px solid #5F6368;
}

.bg-custom {
	background-color: #202124;
}

html body {
	background-color: #202124;
}

.navbar-nav>li {
	padding-left: 5px;
	padding-right: 5px;
}

.input-group md-form form-sm form-1 pl-0 {
	width: 50%;
}

.search::placeholder {
  
  
}
.container-1 input#search:hover, .container-1 input#search:focus, .container-1 input#search:active{
    outline:none;
    background: #ffffff;
  }


/* element.style { */
/* 	width: 615px; */
/* 	height: 46px; */
/* } */
.form-control {
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.428571429;
	color: #E9E9E9;
	vertical-align: middle;
	background-color: #525355;
	background-image: none;
	border: 1px solid #525355;
	border-radius: 4px;
	box-shadow: inset 0 1px 1px #525355;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.btn-danger {
	color: #fff;
	background-color: #525355;
	border-color: #525355;
}

.dropdown-menu {
	right: 0;
	left: auto;
	min-width: 104px;
	background-color: #202124;
	font: red;
}

.dropdown-item {
	color: #919294;
}

.btn-primary {
	background-color: #202124;
	border-color: #202124;
}

.input-group .form-control {
	width: 340%;
	margin-bottom: 0;
}

.margin-left {
	margin-left: 25px !important;
}

.form-inline .input-group>.form-control {
	width: 340%;
}

<%--
searchbar 시작 끝 --%> .container-1 {
	width: 300px;
	vertical-align: middle;
	white-space: nowrap;
	position: relative;
}

.container-1 input#search {
	width: 728px;
    height: 46px;
	background: #525355;
	border: none;
	font-size: 10pt;
	float: left;
	color: black;
	padding-left: 45px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.container-1 input#search::-webkit-input-placeholder {
	color:#eaeaeb;
}

.container-1 input#search:-moz-placeholder { /* Firefox 18- */
	color: #65737e;
}

.container-1 input#search::-moz-placeholder { /* Firefox 19+ */
	color: #65737e;
}

.container-1 input#search:-ms-input-placeholder {
	color: #65737e;
}

.container-1 .icon {
	position: absolute;
	top: 50%;
	margin-left: 15px;
    margin-top: 12px;
	z-index: 1;
	color: #eaeaeb;
}



body {
font-size: 17px;
}




<%--


searchbar



 



끝



 



--%>
</style>

</head>


<body>




	<nav class="navbar navbar-expand-md bg-custom navbar-dark ">
		<!-- Brand -->
		<img src="/keep/static/image/icon.png" width="40px" height="40px" /> <a class="navbar-brand" href="/keep/memo?cmd=main"
			style="margin-left: 6px; margin-right: 96px; font-size: 22px; padding-left: 3px;">Keep</a>

		<!-- Toggler/collapsibe Button  검색버튼 -->

		<c:if test="${not empty sessionScope.principal.id }">





			<div class="row">

				<div id="custom-search-input">
					<form class="form-inline" action="/keep/memo?cmd=search" method="post">
						<div class="input-group col-md-12">
							
							<div class="box">
								<div class="container-1">
									<span class="icon"><i class="fa fa-search"></i></span> <input type="search" id="search" name="keyword" placeholder="Search..." style="font-family: 'Noto Sans KR', sans-serif;" />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>

			



			<!-- Navbar links navbar 창 -->
			<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar"></div>
		</c:if>






		<div class="container mt-3 justify-content-end" style="padding-right: 0px;">

			<ul class="navbar-nav">
				<li class="nav-item "><i onclick="location.href='http://localhost:8000/keep/memo?cmd=main'" class="material-icons" style="cursor: pointer; color: #98989A;" id="" title="메모">lightbulb_outline</i></li>
				<li class="nav-item "><i onclick="location.href='http://localhost:8000/keep/reminder?cmd=main'" class="material-icons" style="cursor: pointer; color: #98989A;" id="" title="리마인더">notifications_none</i></li>
			</ul>


			<div class="dropdown">
				<button type="button" class="btn btn-primary dropdown-toggle margin-left" data-toggle="dropdown">

					<img style="border-radius: 15px" onerror="this.src='/keep/static/image/userProfile.png'" src="${sessionScope.principal.userProfile }" width="30px" height="30px" />

				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/keep/person?cmd=update" style="font-family: 'Noto Sans KR', sans-serif;">회원정보 수정</a> <a class="dropdown-item" href="/keep/person?cmd=profileUpload">사진 수정</a> <a class="dropdown-item"
						href="/keep/person?cmd=logout" style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a>
				</div>
			</div>
		</div>
	</nav>



