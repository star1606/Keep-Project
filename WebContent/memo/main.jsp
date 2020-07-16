<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/nav.jsp"%>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
<!--  아이콘 색깔 #BEBFBF -->





<!-- 메모하기 -->
<br>
<div class="container" style="padding-left: 0px; width: 613px;">

	<div class="form-group">

		<input type="text" class="form-control" id="memo__title__form" name="title" placeholder="제목" style="font-family: 'Noto Sans KR', sans-serif;">
		<textarea class="form-control" rows="5" id="memo__content__form" name="content" required="required" placeholder="메모 작성..." style="font-family: 'Noto Sans KR', sans-serif;"></textarea>

		<button onclick="memoWrite(${sessionScope.principal.id})" type="button" id="close" class="btn btn-primary" style="font-family: 'Noto Sans KR', sans-serif;">추가</button>
	</div>
</div>
<br>
<br>

<!-- 메모 한 내용들을 뿌리기 -->
<div id="memo__list" class="container">

	<c:forEach var="memo" items="${memos}">
		<div id="memo-${memo.id}" class="form-group">
			<input type="text" class="form-control" id="memo__title__list" value="${memo.title}" style="font-family: 'Noto Sans KR', sans-serif;" name="">
			<textarea class="form-control" rows="5" id="memo__content__list" name="text" onclick="" style="font-family: 'Noto Sans KR', sans-serif;">${memo.content}</textarea>

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
		<br>
		<br>
	</c:forEach>

</div>




<script src="/keep/js/memo.js"></script>

</body>
</html>