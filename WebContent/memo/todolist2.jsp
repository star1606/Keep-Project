<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/navReminder.jsp"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<!--  아이콘 색깔 #BEBFBF -->
<!-- <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css'> -->
<!-- <script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'></script> -->
<link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>



</head>

<body>
	<!-- 메모하기 -->
	<div class="page-content page-container" id="page-content">
		<div class="padding">
			<div class="row container d-flex justify-content-center" style="margin: auto">
				<div class="col-lg-8">
					<div class="card px-4">
						<div class="card-body">
							<h4 class="card-title">Todo list</h4>
							<br>
							<br>

							<div class="add-items d-flex">

								<input type="text" class="form-control todo-list-input" id="reminder__content__form" placeholder="Todolist 입력" style="color: black;">
								<button onclick="reminderWrite(${sessionScope.principal.id})" class="add btn btn-primary font-weight-bold todo-list-add-btn" style="font-family: 'Noto Sans KR', sans-serif;">Add</button>
							</div>
							<br>

							<div class="list-wrapper" id="reminder__list">

								<c:forEach var="reminder" items="${reminders}">

									<ul id="reminder-${reminder.id}" class="d-flex flex-column-reverse todo-list">
										<c:choose>
											<c:when test="${reminder.priority == 1 }">
												<li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color: #8d8d8d">check_box</i>
													<div class="form-check" id="reminderList">

														<label class="form-check-label" id="reminder__content__list-${reminder.priority}" style="text-decoration-color: #8d8d8d;"> ${reminder.content }</label>
													</div> <i onclick="reminderDelete(${reminder.id})" class="material-icons" id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i></li>
											</c:when>
											<c:otherwise>
												<li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer;">check_box_outline_blank</i>
													<div class="form-check" id="reminderList">
														<label class="form-check-label" id="reminder__content__list-${reminder.priority}"> ${reminder.content }</label>

													</div> <i onclick="reminderDelete(${reminder.id})" class="material-icons" id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i></li>

											</c:otherwise>


										</c:choose>
									</ul>


								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script src="/keep/js/todolist.js"></script>

</body>
</html>