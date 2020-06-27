<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/nav.jsp" %>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>


div{
	display: inline-block;;
	position: relative;
}

button {
	position: absolute;
	bottom: 10px
	right : 10px;

} 

textarea {
	display: block;
}



</style>




<body>

<div class="input-group">
    <textarea class="form-control custom-control" rows="3" style="resize:none"></textarea>     
    <span class="input-group-addon btn btn-primary">Send</span>
</div>

<div class="container">
 	  
		    <div class="form-group">
		      
	  		  <input type="text" class="form-control"  id="memo__title__form" name="title" >
		      <textarea class="form-control" rows="5" id="memo__content__form" name="content" required="required"></textarea>
		    	<span class="input-group-addon btn btn-primary">Send</span>
		      <button onclick="memoWrite(${sessionScope.principal.id})" type="button"  class="btn btn-primary">닫기</button>
	   		</div>
	</div>


<hr>

<textarea id="yourid" >
    Your text inside the textarea
    </textarea>
    <button onClick="yourFunction();">
     Your button Name
     </button>





  
  </body>
  
 </html>