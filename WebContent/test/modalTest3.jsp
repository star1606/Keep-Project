<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>codeomni.tistory.com 모달 소스 코드</title>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
.form-control {
	width: 100%;
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
	color: #5F6368;
}

#delList {
	position: absolute;
	bottom: 10px;
	left: 10px;
	color: #BEBFBF;
}

#memoCheck {
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

</style>


</head>




<body>

	<div style="float: right">
		<button type="button" value="Decline" class="btn btn-danger" data-toggle="modal" data-target="#declineModal">Decline</button>
	</div>





	<!-- Modal -->
	<div class="modal fade" id="declineModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
			
					<input type="text" class="form-control" id="memo__title__list" value="${memo.title}">
					<textarea class="form-control" rows="5" id="memo__content__list" name="text">${memo.content}</textarea>
					<button type="button" onclick="memoUpdate(${memo.id})" class="btn btn-primary" id="closeList">닫기</button>
				
			</div>
		</div>
	</div>





	<!--         <button data-toggle="modal" data-target="#intro"> -->
	<!--             모달 실행 -->
	<!--         </button> -->
	<!--         <div class="modal fade" id="intro" role="dialog" aria-labelledby="introHeader" aria-hidden="true" tabindex="-1"> -->
	<!--             <div class="modal-dialog"> -->
	<!--                 <div class="modal-content"> -->
	<!--                     <div class="modal-header"> -->
	<!--                         <h4 class="modal-title">공지 사항</h4> -->
	<!--                     </div> -->
	<!--                   <div class="modal-body"> -->
	<!--   					  <textarea class="form-control col-xs-12" rows="7" cols="50"></textarea> -->
	<!-- 					</div> -->
	<!--                     <div class="modal-footer"> -->
	<!--                         <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button> -->
	<!--                     </div> -->
	<!--                 </div> -->
	<!--             </div> -->
	<!--         </div> -->




	<!--         <div class="modal fade" id="myModal" role="dialog"> 사용자 지정 부분① : id명 -->

	<!--     <div class="modal-dialog"> -->



	<!--       Modal content -->

	<!--       <div class="modal-content"> -->

	<!--         <div class="modal-header"> -->

	<!--           <button type="button" class="close" data-dismiss="modal">×</button> -->

	<!--           <h4 class="modal-title">모달 창 타이틀</h4> 사용자 지정 부분② : 타이틀 -->

	<!--         </div> -->

	<!--         <div class="modal-body"> -->
	<!-- 			 <textarea class="form-control col-xs-12"></textarea> -->
	<!--           사용자 지정 부분③ : 텍스트 메시지 -->

	<!--         </div> -->

	<!--         <div class="modal-footer"> -->

	<!--           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->

	<!--         </div> -->

	<!--       </div> -->

	<!--     </div> -->

	<!--   </div> -->



	<!-- <br/><br/> -->

	<!-- <!-- 아래에서 data-toggle과 data-target 속성에서 data-toggle에는 modal 값을 data-target속성에는 모달 창 전체를  -->

	<!-- 감싸는 div의 id 이름을 지정하면 된다. -->
	-->

	<!-- &nbsp;&nbsp;<button type="button" data-toggle="modal" data-target="#myModal">모달 창 열기</button> -->

	<!-- &nbsp;&nbsp;<a data-toggle="modal" href="#myModal">모달 창 열기</a> -->








	<!--         <script src="js/jquery-2.1.3.min.js"></script> -->
	<!--         <script src="js/bootstrap.min.js"></script>  -->

</body>
</html>


