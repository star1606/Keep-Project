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

.container-1 input#search:hover, .container-1 input#search:focus, .container-1 input#search:active {
	outline: none;
	background: #ffffff;
}


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
searchbar 시작 끝 --%>


 .container-1 {
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
	color: #eaeaeb;
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




ul {
	display: inline-block;
	position: relative;
}

#create {
	position: absolute;
	right: 5px;
}

#delList {
	position: absolute;
	right: 30px;
}

.form-check {
	display: inline-block;
}

li {
	text-align: center;
}

body {
	background-color: #f9f9fa
}

.flex {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto
}

@media ( max-width :991.98px) {
	.padding {
		padding: 1.5rem
	}
}

@media ( max-width :767.98px) {
	.padding {
		padding: 1rem
	}
}

.padding {
	padding: 5rem
}

.card {
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	-ms-box-shadow: none
}

.pl-3, .px-3 {
	padding-left: 1rem !important
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid #d2d2dc;
	border-radius: 0
}

.pr-3, .px-3 {
	padding-right: 1rem !important
}

.card .card-body {
	padding: 1.25rem 1.75rem
}

.card-body {
	flex: 1 1 auto;
	padding: 1.25rem;
	margin-bottom: 13px;
}

.card .card-title {
	color: #000000;
	margin-bottom: 0.625rem;
	text-transform: capitalize;
	font-size: 0.875rem;
	font-weight: 500
}

.add-items {
	margin-bottom: 1.5rem;
	overflow: hidden
}

.d-flex {
	display: flex !important
}

.add-items input[type="text"] {
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
	width: 100%;
	background: transparent
}

.form-control {
	border: 1px solid #f3f3f3;
	font-weight: 400;
	font-size: 0.875rem
}

.form-control {
	display: block;
	width: 100%;
	padding: 0.875rem 1.375rem;
	font-size: 1rem;
	line-height: 1;
	color: #495057;
	background-color: #ffffff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 2px;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out
}

.add-items .btn {
	margin-left: .5rem
}

.btn {
	font-size: 0.875rem;
	line-height: 1;
	font-weight: 400;
	padding: .7rem 1.5rem;
	border-radius: 0.1275rem
}

.list-wrapper {
	height: 100%;
	max-height: 100%
}

.add-items {
	margin-bottom: 1.5rem;
	overflow: hidden
}

.add-items input[type="text"] {
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
	width: 100%;
	background: transparent
}

.add-items .btn, .add-items .fc button, .fc .add-items button, .add-items .ajax-upload-dragdrop .ajax-file-upload, .ajax-upload-dragdrop .add-items .ajax-file-upload, .add-items .swal2-modal .swal2-buttonswrapper .swal2-styled,
	.swal2-modal .swal2-buttonswrapper .add-items .swal2-styled, .add-items .wizard>.actions a, .wizard>.actions .add-items a {
	margin-left: .5rem
}

.rtl .add-items .btn, .rtl .add-items .fc button, .fc .rtl .add-items button, .rtl .add-items .ajax-upload-dragdrop .ajax-file-upload, .ajax-upload-dragdrop .rtl .add-items .ajax-file-upload, .rtl .add-items .swal2-modal .swal2-buttonswrapper .swal2-styled,
	.swal2-modal .swal2-buttonswrapper .rtl .add-items .swal2-styled, .rtl .add-items .wizard>.actions a, .wizard>.actions .rtl .add-items a {
	margin-left: auto;
	margin-right: .5rem
}

.list-wrapper {
	height: 100%;
	max-height: 100%
}

.list-wrapper ul {
	padding: 0;
	text-align: left;
	list-style: none;
	margin-bottom: 0
}

.list-wrapper ul li {
	font-size: .9375rem;
	padding: .4rem 0;
	border-bottom: 1px solid #f3f3f3
}

.list-wrapper ul li:first-child {
	border-bottom: none
}

.list-wrapper ul li .form-check {
	max-width: 90%;
	margin-top: .25rem;
	margin-bottom: .25rem
}

.list-wrapper ul li .form-check label:hover {
	cursor: pointer
}

.list-wrapper input[type="checkbox"] {
	margin-right: 15px
}

.list-wrapper .remove {
	cursor: pointer;
	font-size: 1.438rem;
	font-weight: 600;
	width: 1.25rem;
	height: 1.25rem;
	line-height: 20px;
	text-align: center
}

.list-wrapper .completed {
	text-decoration: line-through;
	text-decoration-color: #3da5f4
}

.list-wrapper ul li .form-check {
	max-width: 90%;
	margin-top: .25rem;
	margin-bottom: .25rem
}

.list-wrapper ul li .form-check, .list-wrapper ul li .form-check .form-check-label, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-name, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-designation,
	.email-wrapper .mail-list-container .mail-list .content .sender-name, .email-wrapper .message-body .attachments-sections ul li .details p.file-name, .settings-panel .chat-list .list .info p {
	text-overflow: ellipsis;
	overflow: hidden;
	max-width: 100%;
	white-space: nowrap
}

.form-check {
	position: relative;
	display: block;
	margin-top: 10px;
	margin-bottom: 10px;
	padding-left: 0
}

.list-wrapper ul li .form-check, .list-wrapper ul li .form-check .form-check-label, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-name, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-designation,
	.email-wrapper .mail-list-container .mail-list .content .sender-name, .email-wrapper .message-body .attachments-sections ul li .details p.file-name, .settings-panel .chat-list .list .info p {
	text-overflow: ellipsis;
	overflow: hidden;
	max-width: 100%;
	white-space: nowrap
}

.form-check .form-check-label {
	min-height: 18px;
	display: block;
	margin-left: 1.75rem;
	font-size: 0.875rem;
	line-height: 1.5
}

.form-check-label {
	margin-bottom: 0
}

.list-wrapper input[type="checkbox"] {
	margin-right: 15px
}

.form-check .form-check-label input {
	position: absolute;
	top: 0;
	left: 0;
	margin-left: 0;
	margin-top: 0;
	z-index: 1;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0)
}

input[type="radio"], input[type="checkbox"] {
	box-sizing: border-box;
	padding: 0
}

.list-wrapper ul li .form-check, .list-wrapper ul li .form-check .form-check-label, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-name, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user .u-designation,
	.email-wrapper .mail-list-container .mail-list .content .sender-name, .email-wrapper .message-body .attachments-sections ul li .details p.file-name, .settings-panel .chat-list .list .info p {
	text-overflow: ellipsis;
	overflow: hidden;
	max-width: 100%;
	white-space: nowrap
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:before {
	content: "";
	width: 18px;
	height: 18px;
	border-radius: 2px;
	border: solid #405189;
	border-width: 2px;
	-webkit-transition: all;
	-moz-transition: all;
	-ms-transition: all;
	-o-transition: all;
	transition: all;
	transition-duration: 0s;
	-webkit-transition-duration: 250ms;
	transition-duration: 250ms
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:before, .form-check .form-check-label input[type="checkbox"]+.input-helper:after {
	position: absolute;
	top: 0;
	left: 0
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:after {
	-webkit-transition: all;
	-moz-transition: all;
	-ms-transition: all;
	-o-transition: all;
	transition: all;
	transition-duration: 0s;
	-webkit-transition-duration: 250ms;
	transition-duration: 250ms;
	font-family: Material Design Icons;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transform: scale(0);
	-ms-transform: scale(0);
	-o-transform: scale(0);
	transform: scale(0);
	content: '\F12C';
	font-size: .9375rem;
	font-weight: bold;
	color: #ffffff
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:before, .form-check .form-check-label input[type="checkbox"]+.input-helper:after {
	position: absolute;
	top: 0;
	left: 0
}

.form-check .form-check-label input[type="checkbox"]:checked+.input-helper:before {
	background: #405189;
	border-width: 0
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:before {
	content: "";
	width: 18px;
	height: 18px;
	border-radius: 2px;
	border: solid #405189;
	border-width: 2px;
	-webkit-transition: all;
	-moz-transition: all;
	-ms-transition: all;
	-o-transition: all;
	transition: all;
	transition-duration: 0s;
	-webkit-transition-duration: 250ms;
	transition-duration: 250ms
}

.form-check .form-check-label input[type="checkbox"]+.input-helper:after {
	font-family: FontAwesome;
	content: "\f095";
	display: inline-block;
	padding-right: 3px;
	vertical-align: middle;
	color: #fff
}

.text-primary, .list-wrapper .completed .remove {
	color: #405189 !important
}

.list-wrapper .remove {
	cursor: pointer;
	font-size: 1.438rem;
	font-weight: 600;
	width: 1.25rem;
	height: 1.25rem;
	line-height: 20px;
	text-align: center
}

.ml-auto, .list-wrapper .remove, .mx-auto {
	margin-left: auto !important
}

.mdi-close-circle-outline:before {
	content: "\F15A"
}

.list-wrapper ul li {
	font-size: .9375rem;
	padding: .4rem 0;
	border-bottom: 1px solid #f3f3f3
}

.mdi:before {
	font-family: FontAwesome;
	content: "\f00d";
	display: inline-block;
	padding-right: 3px;
	vertical-align: middle;
	font-size: .756em;
	color: #405189
}

.list-wrapper ul {
	padding: 0;
	text-align: left;
	list-style: none;
	margin-bottom: 0
}

.flex-column-reverse {
	flex-direction: column-reverse !important
}

.d-flex, .loader-demo-box, .distribution-chart-legend .distribution-chart, .distribution-chart-legend .distribution-chart .item, .list-wrapper ul li, .email-wrapper .mail-sidebar .menu-bar .profile-list-item a,
	.email-wrapper .mail-sidebar .menu-bar .profile-list-item a .user, .email-wrapper .mail-list-container .mail-list .details, .email-wrapper .message-body .attachments-sections ul li .thumb,
	.email-wrapper .message-body .attachments-sections ul li .details .buttons, .lightGallery .image-tile .demo-gallery-poster, .swal2-modal, .navbar .navbar-menu-wrapper .navbar-nav, .navbar .navbar-menu-wrapper .navbar-nav .nav-item.nav-profile,
	.navbar .navbar-menu-wrapper .navbar-nav .nav-item.dropdown .navbar-dropdown .dropdown-item {
	display: flex !important
}

.card .card-title {
	font-size: 1.875rem;
	font-family: 'Noto Sans KR', sans-serif;
}

.form-check .form-check-label {
	margin-left: 1.75rem;
	font-size: 1.8rem;
	font-family: 'Noto Sans KR', sans-serif;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 17px;
	color: black;
}

}
.btn {
	font-size: 1.5rem;
}

.card .card-title {
	text-align: center;
	font-size: 4rem;
	font-family: 'Noto Sans KR', sans-serif;
}

.list-wrapper ul li:first-child {
	border-bottom: 1px solid #8d8d8d;
}

hr {
	margin-bottom: 8px;
	border-color: #8d8d8d;
}

#delList {
	position: absolute;
	right: 12px;
	bottom: 12px;
	display: none;
}

/* #reminderCheck-1, #reminderCheck-0{ */
/* 	position: absolute; */
/* 	left : 0px; */

/* } */
#reminderCheck-1, #reminderCheck-0 {
	margin-top: 4px;
}

ul:hover #delList {
	display: block;
}

#reminder__content__list-1 {
	text-decoration: line-through;
	text-decoration-color: #8d8d8d;
}
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
					<form class="form-inline" action="/keep/reminder?cmd=search" method="post">
						<div class="input-group col-md-12">

							<div class="box">
								<div class="container-1">
									<span class="icon"><i class="fa fa-search"></i></span> <input type="search" id="search" name="keyword" style="font-family: 'Noto Sans KR', sans-serif;" placeholder="Search..." />
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
				<li class="nav-item "><i onclick="location.href='http://localhost:8000/keep/reminder?cmd=main'" class="material-icons" style="cursor: pointer; color: #98989A;" id="" title="Todolist">notifications_none</i></li>
			</ul>


			<div class="dropdown">
				<button type="button" class="btn btn-primary dropdown-toggle margin-left" data-toggle="dropdown">

					<img style="border-radius: 15px" onerror="this.src='/keep/static/image/userProfile.png'" src="${sessionScope.principal.userProfile }" width="30px" height="30px" />

				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="/keep/person?cmd=update" style="font-family: 'Noto Sans KR', sans-serif;">회원정보 수정</a> <a class="dropdown-item" href="/keep/person?cmd=profileUpload">사진 수정</a> <a
						class="dropdown-item" href="/keep/person?cmd=logout" style="font-family: 'Noto Sans KR', sans-serif;">로그아웃</a>
				</div>
			</div>
		</div>
	</nav>