<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file = "../include/nav.jsp" %>
	


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
	
	#del, #delList {
		position: absolute;
		bottom: 10px;
		left: 10px;	
		background-color: #202124;
		border-color: #202124;
		color: #5F6368;
	}
	
	#memo__title__form, #memo__content__form, #memo__title__list, #memo__content__list
	{
    background-color:#202124;
    border-color: #5F6368;
	}
	
	
	
	textarea {
		display: :block;
	}



</style>
	

	
	<!-- 메모하기 -->	
	<div class="container">
 	  
		    <div class="form-group">
		      
	  		  <input type="text" class="form-control"  id="memo__title__form" name="title" placeholder="제목" >
		      <textarea class="form-control" rows="5" id="memo__content__form" name="content" required="required" placeholder="메모 작성..."></textarea>
		    
		      <button onclick="memoWrite(${sessionScope.principal.id})" type="button" id="close"  class="btn btn-primary">닫기</button>
	   		</div>
	</div>
	<br>
	<br>
	
		<!-- 메모 한 내용들을 뿌리기 -->
	 <div id="memo__list" class="container">
	  
	<c:forEach var="memo" items="${memos}">
	    <div id="memo-${memo.id}" class="form-group">
	       <input type="text" class="form-control"  id="memo__title__list" value="${memo.title}">
	       <textarea class="form-control" rows="5" id="memo__content__list" name="text">${memo.content}</textarea>
	   	   <button type="button" class="btn btn-primary" id="closeList">닫기</button> <!-- 수정도 가능하게 해야함 -->
	 	   <button type="button" class="btn btn-primary" id="delList">삭제</button>	   
	    </div>
	 	  
	 	   
	 	<br/>
	 	<br/>	 	
	  </c:forEach>
	
	</div>
	
	
	 



		
		





<script src="/keep/js/memo.js"></script> 

</body>
</html>