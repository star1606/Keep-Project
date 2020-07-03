<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/nav.jsp"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!--  아이콘 색깔 #BEBFBF -->


<style>
#memo__list {
	padding-left: 0px;
	width: 613px;
}

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
	color: #E8EAED;
}

#closeList {
	display: none;
	color: #202124;
}

#delList {
	position: absolute;
	bottom: 10px;
	left: 10px;
	color: #BEBFBF;
	display: none;
}

#memoCheck-1 {
	position: absolute;
	color: #red;
	top: 6px;
	right: 16px;
}

#memoCheck {
	position: absolute;
	color: #BEBFBF;
	top: 6px;
	right: 16px;
}

#memoCheck-0 {
	position: absolute;
	color: #BEBFBF;
	top: 6px;
	right: 16px;
}

#memo__title__form, #memo__content__form, #memo__title__list, #memo__content__list {
	color: #E8EAED;
	background-color: #202124;
	border-color: #5F6368;
}

textarea {
	display: :block;
	color: #E8EAED;
}

.form-control:focus {
	box-shadow: none;
}

/* .container:hover #delList, #closeList { */
/*    display: block; */
/* }  */
.form-group:hover #delList, #closeList {
	display: block;
}

.form-group:hover #closeList {
	color: #E8EAED;
}
</style>





<!-- 메모하기 -->
<div class="container"  style="padding-left: 0px; width: 613px;">

	<div class="form-group" >

		<input type="text" class="form-control" id="memo__title__form" name="title" placeholder="제목">
		<textarea class="form-control" rows="5" id="memo__content__form" name="content" required="required" placeholder="메모 작성..."></textarea>

		<button onclick="memoWrite(${sessionScope.principal.id})" type="button" id="close" class="btn btn-primary">닫기</button>
	</div>
</div>
<br>
<br>

<!-- 메모 한 내용들을 뿌리기 --> 	
<div id="memo__list" class="container">

	<c:forEach var="memo" items="${memos}">
		<div id="memo-${memo.id}" class="form-group">
			<input type="text" class="form-control" id="memo__title__list" value="${memo.title}" name="">
			<textarea class="form-control" rows="5" id="memo__content__list" name="text" onclick="">${memo.content}</textarea>

			<c:choose>


				<c:when test="${memo.priority == 1 }">
					<i onclick="memoCheck(${memo.id}, ${memo.priority})" class="material-icons" id="memoCheck-${memo.priority }" style="cursor: pointer; color: red;">check</i>
				</c:when>

				<c:otherwise>
					<i onclick="memoCheck(${memo.id}, ${memo.priority})" class="material-icons" id="memoCheck-${memo.priority }" style="cursor: pointer;">check</i>
				</c:otherwise>

			</c:choose>
			<button type="button" onclick="memoUpdate(${memo.id})" class="btn btn-primary" id="closeList">수정</button>
			<i onclick="memoDelete(${memo.id})" class="material-icons" id="delList" style="cursor: pointer;">delete</i>


		</div>
		<br />
		<br />

	</c:forEach>

</div>







<script>
// $("#memo__list").hover(
// 		function(){
// 			$("deList").hide();
// 			$("closeList").hide();
// });
// $(".form-group").mouseleave(function(){$(this).css("background", "red");}
</script>




<script src="/keep/js/memo.js"></script>

</body>
</html>