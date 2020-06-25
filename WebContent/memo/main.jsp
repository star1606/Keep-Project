<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file = "../include/nav.jsp" %>
	

	
	<!-- 메모하기 -->	
	<div class="container">
 
	    <div class="form-group">
	    
  		  <input type="text" class="form-control"  id="memo__title__form" name="title" >
	      <textarea class="form-control" rows="5" id="memo__content__form" name="content"></textarea>
	    </div>
	      <button onclick="memoWrite()" type="button" class="btn btn-primary">닫기</button>
	  
	</div>
	
	
		<!-- 메모 한 내용들을 뿌리기 -->
	<div id="memo__list" class="container">
	  
	  <c:forEach var="" items="">
	    <div id="memo-${memo.id}" class="form-group">
	       <input type="text" class="form-control"  id="" value="${memo.title}">
	       <textarea class="form-control" rows="5" id="" name="text">${memo.content}</textarea>
	    </div>
	 	   <button type="button" class="btn btn-primary">Submit</button>
	  </c:forEach>
	
	</div>
	
	





</body>

<script>

function memowWrite(id ,personId) {
	
	if(personId === undefined){
		alert("로그인이 필요합니다.");
		return;
	}
	
		var data ={
				id : id,
				personId : personId,
				title: $("memo__title__form").val(),
				content: $("memo__content__form").val(),
		};
	
	
	
	$.ajax({
		data: "POST",
		url: "/keep/memo?cmd=writeProc",
		data : JSON.stringify(data),
		contentType : "application/json; charset=utf-8",
		dataType : "json"
		
	}).done(function(result) {
		if(result == -1 || result == 0){
			alert("메모 작성 실패");
		} else {
			alert("메모 작성 성공!");
			$("#").empty(); 
			console.log(result);
			renderMemoList(reuslt);
			$().val("");
		}
	}).fail(function() {
		
		alert("메모 작성 실패");
	});
	
	function renderMemoList(memos) {
		for(var memo of memos){
			$("#memo")
		}
	}	
		
		
		
}




</script>




</html>