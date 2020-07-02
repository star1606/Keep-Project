<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/nav.jsp"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--  아이콘 색깔 #BEBFBF -->


<style>
div {
	display: :inline-block;
	position: relative;
}

#close, #closeList {
	position: absolute;
	bottom: 10px;
	right: 10px;
	background-color: #202124;
	border-color: #202124;
	color: #5F6368;
}

#delList {
	position: absolute;
	bottom: 10px;
	left: 10px;
	color: #BEBFBF;
}

#reminderCheck {
	position: absolute;
	color: #BEBFBF;
	top: 6px;
	right: 16px;
}

#reminder__content__form, #reminder__content__list {
	color: #E8EAED;
	background-color: #202124;
	border-color: #5F6368;
}


</style>



<!-- 메모하기 -->
<div class="container">

	<div class="form-group">
	
		<input type="text" class="form-control" rows="5" id="reminder__content__form" name="content" required="required" placeholder="reminder 작성..."/>
		<button onclick="reminderWrite(${sessionScope.principal.id})" type="button" id="close" class="btn btn-primary">닫기</button>
	</div>
</div>
<br>
<br>

<!-- 메모 한 내용들을 뿌리기 -->
<div id="reminder__list" class="container">

	<c:forEach var="reminder" items="${reminders}"> 

		<div id="reminder-" class="form-group">
			<input type="text" class="form-control" id="reminder__content__list" value="">
			
 			<c:if test="${reminder.priority == 1}"> 
				<i onclick="" class="material-icons" id="reminderCheck" style="cursor: pointer; color: red;">check</i>
 			</c:if> 
 			<c:if test="${reminder.priority == 0}">
				<i onclick="" class="material-icons" id="reminderCheck" style="cursor: pointer;">check</i>
 			</c:if> 
			<button type="button" onclick="" class="btn btn-primary" id="closeList">닫기</button>
			<!-- 수정도 가능하게 해야함 -->

			<i onclick="" class="material-icons" id="delList" style="cursor: pointer;">delete</i>



		</div>
		<br />
		<br />

	</c:forEach>

</div>













<script src="/keep/js/reminder.js"></script>

</body>
</html>