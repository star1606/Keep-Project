<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file = "../include/nav.jsp" %>
	

	
	<!-- 메모하기 -->	
	<div class="container">
 	  
		    <div class="form-group">
		      
	  		  <input type="text" class="form-control"  id="memo__title__form" name="title" >
		      <textarea class="form-control" rows="5" id="memo__content__form" name="content" required="required"></textarea>
		    
		      <button onclick="memoWrite(${sessionScope.principal.id})" type="button"  class="btn btn-primary">닫기</button>
	   		</div>
	</div>
	<br>
	<br>
	
		<!-- 메모 한 내용들을 뿌리기 -->
	 <div id="memo__list" class="container">
	  
	<%--  <c:forEach var="memo" items="${memos}">
	    <div id="memo-${memo.id}" class="form-group">
	       <input type="text" class="form-control"  id="" value="${memo.title}">
	       <textarea class="form-control" rows="5" id="" name="text">${memo.content}</textarea>
	    </div>
	 	   <button type="button" class="btn btn-primary">Submit</button>
	  </c:forEach>--%> 
	
	</div>
	
	





</body>

<script>

function memoWrite(personId) {


		var data = {
				personId : personId,
				title : $("#memo__title__form").val(),
				content : $("#memo__content__form").val()
				
				
		};
	
		$.ajax({
			type : "post",
			url : "/keep/memo?cmd=writeProc",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			dataType : "json"
		}).done(function(result) {
			alert(result);
		}).fail(function() {
			
		});
}



</script>


		
		





<script src="/keep/js/memo.js"></script> 




</html>