<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/navReminder.jsp"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--  아이콘 색깔 #BEBFBF -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<style>
#reminder__list {
	padding-left: 0px;
	width: 616px;
}

div {
	display: :inline-block;
	position: relative;
}

#closeList {
	position: absolute;
	background-color: #202124;
	border-color: #202124;
	bottom: 6px;
	color: #202124;
	right: 11px;
	display: none;
}

#close {
	position: absolute;
	background-color: #202124;
	border-color: #202124;
	color: #E8EAED;
	bottom: 7px;
	right: 8px;
}

#closeList {
	
}

#delList {
	position: absolute;
	bottom: 8px;
	right: 45px;
	color: #BEBFBF;
	display: none;
}

#reminderCheck, #reminderCheck-0, #reminderCheck-1 {
	position: absolute;
	color: #BEBFBF;
	top: 6px;
	left: 5px;
}

.btn {
	padding: 0px 0px;
}

#reminderCheck-1 {
	position: absolute;
	color: red;
	top: 6px;
	left: 5px;
}

#reminder__content__form, #reminder__content__list, #reminder__content__list-0 {
	color: #E8EAED;
	background-color: #202124;
	border-color: #5F6368;
	padding: 0px;
	padding-left: 10px;
}

#reminder__content__list-1 {
	color: #E8EAED;
	background-color: #202124;
	border-color: #5F6368;
	padding: 0px;
	padding-left: 10px;
	text-decoration: line-through;
	text-decoration-color: red;
}

#reminder__content__list-0 {
	padding-left: 35px;
}

#reminder__content__list-1 {
	padding-left: 35px;
}

.form-control:focus {
	box-shadow: none;
}

.form-group:hover #delList, #closeList {
	display: block;
}

.form-group:hover #closeList {
	color: #E8EAED;
}

body {
    font-size: 14px;
}



.list-group
{
border-bottom: 1px solid #f3f3f3
}
</style>





<!-- 메모하기 -->
<div class="container" style="padding-left: 0px; width: 613px;">

	<div class="form-group">

		<input type="text" class="form-control" id="reminder__content__form" name="content" required="required" placeholder="reminder 작성..." />
		<button onclick="reminderWrite(${sessionScope.principal.id})" type="button" id="close" class="btn btn-primary">확인</button>
	</div>

	<br> <br>

	<!-- 메모 한 내용들을 뿌리기 -->
	<div id="reminder__list" class="container">


		<div id="reminder-${reminder.id}" class="form-group">
			<ul>
				<li><input type="text" class="form-control" id="reminder__content__list-${reminder.priority}" value="${reminder.content}" style="text-decoration: text-decoration; text-decoration-color: red;">
					<i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color: red;">assignment_turned_in</i>
					<button type="button" onclick="reminderUpdate(${reminder.id})" class="btn btn-primary" id="closeList">수정</button> <i onclick="reminderDelete(${reminder.id})" class="material-icons" id="delList"
					style="cursor: pointer; font-size: 20px;">delete</i></li>
			</ul>
			<input type="text" class="form-control" id="reminder__content__list-${reminder.priority}" value="${reminder.content}"> <i onclick="reminderCheck(${reminder.id}, ${reminder.priority})"
				class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer;">assignment_turned_in</i>


		</div>
		
		
				<div class="container">
			<h2>Basic List Group</h2>
			<ul class="list-group">
				<input type="text" class="list-group-item" id="reminder__content__list-${reminder.priority}" style="border-bottom: 1px solid #f3f3f3">
				<li class="list-group-item">First item</li>
				<li class="list-group-item">Second item</li>
				<li class="list-group-item">Third item</li>
			</ul>


		


		


			<br /> <br />



		</div>


	</div>

</div>

  








	<script src="/keep/js/reminder.js"></script>

	</body>
	</html>