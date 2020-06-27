

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
				renderMemoList(result);
				$("#memo__title__form").val("");
				$("#memo__content__form").val("");
				$("")
				
				
			}
			
		}).fail(function() {
			alert("메모 작성 실패");
		});
}


function renderMemoList(memos) {
	for(var memo of memos){
		$("#memo__list").append(makeMemoItem(memo));
	}
}




function makeMemoItem(memo) {
	var memoItem = `<div id="memo__list" class="container">`;
		memoItem += `<div id="memo-${memo.id}" class="form-group">`;
		memoItem += `<input type="text" class="form-control"  id="" value="${memo.title}">`;
		memoItem += `<textarea class="form-control" rows="5" id="" name="text">${memo.content}</textarea>`;
		memoItem += `</div>`;
		memoItem += `<button type="button" class="btn btn-primary">닫기</button>`;
		memoItem += `<button type="button" class="btn btn-primary">삭제</button>`;
		memoItem += `</div>`;
		
		return memoItem;
		
		
}