

















function reminderCheck(id, priority){

// var data = {
// "id" : id,
// "priority" : priority
// };
		console.log(id);
		console.log(priority);
	$.ajax({
		type : "get",
		url : "/keep/reminder?cmd=priority&id="+id+"&priority="+priority,
		contentType: "appliaction/json; charset=utf-8",
		dataType : "json"
		
	}).done(function(result) {

		
		alert("우선순위 성공");
		console.log(result);
		
		$("#reminder-"+"${reminder.id}").empty();
		
		for (reminder of result) {
			var  reminderItem =`<ul id="reminder-${reminder.id}" class="d-flex flex-column-reverse todo-list">
								<li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color:#8d8d8d ">check_box</i>
								<div class="form-check" id="reminderList">
								<label class="form-check-label" id="reminder__content__list-${reminder.priority}" style="text-decoration; text-decoration-color: #8d8d8d;"> ${reminder.content }</label>
								</div>
								<i onclick="reminderDelete(${reminder.id})" class="material-icons"	id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i>
								</li>
								</ul>`;

			// return memoItem;
			
			$("#reminder-"+"${reminder.id}").append(reminderItem);
		}
		

	}).fail(function(error) {
		alert("우선순위 실패");
	});

	
}









function reminderUpdate(id) {
	 
	var data ={ 
			id : id,
			content : $("#reminder__content__list").val()		
	};
	
	console.log(JSON.stringify(data));
	
	$.ajax({
		type : "post",
		url : "/keep/reminder?cmd=update",
		data : JSON.stringify(data),
		contentType: "application/json; charset=utf-8",
		dataType : "json"
			
	}).done(function(result) {
		
		
		
		alert("리마인더 수정 성공");
		console.log(result);
		renderReminderList(result);
		
	}).fail(function() {
		alert("리마인더 수정 실패(function2)");
	});
	
}



function reminderDelete(reminderId){
	

	$.ajax({
		type : "post",
		url : "/keep/reminder?cmd=delete",
		data : "reminderId=" + reminderId,
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		dataType: "text"
		
	}).done(function(result) {
		if(result == "1"){
			alert("리마인더 삭제 성공");
			var reminderItem = $("#reminder-" + reminderId);
			reminderItem.remove();
			
		} else {
		
			alert("리마인더 삭제 실패");
		}
		
		
	}).fail(function(error) {
		alert("리마인더 삭제 실패");
	});
	
	
}



function reminderWrite(personId) {


		var data = {
				personId : personId,
				content : $("#reminder__content__form").val()
				
				
		};
	
		$.ajax({
			type : "post",
			url : "/keep/reminder?cmd=writeProc",
			data : JSON.stringify(data),
			contentType : "application/json; charset=utf-8",
			dataType : "json"
		}).done(function(result) {
			if(result == -1 || result == 0){
				alert("리마인더 작성 실패");
			} else {
				alert("리마인더 작성 성공");
				$("#reminder-'${reminder.id}'").empty();
				console.log(result);
				
			
				$("#reminder__content__form").val("");
				renderReminderList(result);
				
				
			}
			
		}).fail(function(error) {
			alert("리마인더 작성 실패");
		});
}


function renderReminderList(reminders) {
	for(var reminder of reminders){
		$("#reminder-"+"${reminder.id}").append(makeReminderItem(reminder));
	}
}




function makeReminderItem(reminder) {
	var reminderItem = `<ul id="reminder-${reminder.id}" class="d-flex flex-column-reverse todo-list">
								<li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color:#8d8d8d ">check_box</i>
								<div class="form-check" id="reminderList">
								<label class="form-check-label" id="reminder__content__list-${reminder.priority}" style="text-decoration; text-decoration-color: #8d8d8d;"> ${reminder.content }</label>
								</div>
								<i onclick="reminderDelete(${reminder.id})" class="material-icons"	id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i>
								</li>
								</ul>`;
	
		return reminderItem;
		
		
}