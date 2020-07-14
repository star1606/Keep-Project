

function memoCheck(id, priority){


		console.log(id);
		console.log(priority);
	$.ajax({
		type : "get",
		url : "/keep/memo?cmd=priority&id="+id+"&priority="+priority,
		contentType: "appliaction/json; charset=utf-8",
		dataType : "json"
		
	}).done(function(result) {

		
		alert("우선순위 check");
		console.log("result값" + result);
		
		$("#memo__list").empty();
		if(priority == 1){
			console.log("음");
		} else {
			
			
		}
		
		
		
		for (memo of result) {
			var memoItem = `<div id="memo__list" class="container">
							<div id="memo-${memo.id}" class="form-group">
							<input type="text" class="form-control" id="memo__title__list" value="${memo.title}">
							<textarea class="form-control" rows="5" id="memo__content__list" name="text" onclick="">${memo.content}</textarea>
							<i onclick="memoCheck(${memo.id}, ${memo.priority})" class="material-icons" id="memoCheck-${memo.priority }"" style="cursor: pointer;">check</i>
							<button type="button" onclick="memoUpdate(${memo.id})" class="btn btn-primary" id="closeList">수정</button>
							<i onclick="memoDelete(${memo.id})" class="material-icons" id="delList" style="cursor: pointer;">delete</i>
							</div>
							</br>
							</br>
							</div>`;
	
			
			$("#memo__list").append(memoItem);
		}
		
		$('#memoCheck-1').css('color', 'red');

		
	}).fail(function(error) {
		alert("우선순위 실패");
	});

	
}









function memoUpdate(id) {
	 
	var data ={ 
			id : id,
			title : $("#memo__title__list").val(),
			content : $("#memo__content__list").val()		
	};
	
	console.log(JSON.stringify(data));
	
	$.ajax({
		type : "post",
		url : "/keep/memo?cmd=update",
		data : JSON.stringify(data),
		contentType: "application/json; charset=utf-8",
		dataType : "json"
			
	}).done(function(result) {
		
		
		
		alert("메모 수정 성공");
		console.log(result);
		renderMemoList(result);
		
	}).fail(function() {
		alert("메모 수정 실패(function2)");
	});
	
}



function memoDelete(memoId){
	

	$.ajax({
		type : "post",
		url : "/keep/memo?cmd=delete",
		data : "memoId=" + memoId,
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		dataType: "text"
		
	}).done(function(result) {
		if(result == "1"){
			alert("메모 삭제 성공");
			var memoItem = $("#memo-" + memoId);
			memoItem.remove();
			
		} else {
		
			alert("메모 삭제 실패");
		}
		
		
	}).fail(function(error) {
		alert("메모 삭제 실패");
	});
	
	
}



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
			if(result == -1 || result == 0){
				alert("메모 작성 실패");
			} else {
				alert("메모 작성 성공");
				$("#memo__list").empty();
				console.log(result);
				
				$("#memo__title__form").val("");
				$("#memo__content__form").val("");
				renderMemoList(result);
				
				
			}
			
		}).fail(function(error) {
			alert("메모 작성 실패");
		});
}


function renderMemoList(memos) {
	for(var memo of memos){
		$("#memo__list").append(makeMemoItem(memo));
	}
}




function makeMemoItem(memo) {
	var memoItem = `<div id="memo__list" class="container">		
					<div id="memo-${memo.id}" class="form-group">
					<input type="text" class="form-control" id="memo__title__list" value="${memo.title}" style="font-family: 'Noto Sans KR', sans-serif;" name="">
					<textarea class="form-control" rows="5" id="memo__content__list" name="text" onclick="" style="font-family: 'Noto Sans KR', sans-serif;">${memo.content}</textarea>
					<i onclick="memoCheck(${memo.id}, ${memo.priority})" class="material-icons" id="memoCheck-${memo.priority }" style="cursor: pointer;">check</i>
					<button type="button" onclick="memoUpdate(${memo.id})" class="btn btn-primary" id="closeList">수정</button>
					<i onclick="memoDelete(${memo.id})" class="material-icons" id="delList" style="cursor: pointer;">delete</i>
					</div>
					</br>
					</br>
					</div>`;
		
	return memoItem;
		
		
}