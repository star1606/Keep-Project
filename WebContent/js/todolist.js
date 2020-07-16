

function reminderCheck(id, priority){


		console.log(id);
		console.log(priority);
	$.ajax({
		type : "get",
		url : "/keep/reminder?cmd=priority&id="+id+"&priority="+priority,
		contentType: "appliaction/json; charset=utf-8",
		dataType : "json"
		
	}).done(function(result) {

		
		alert("Todolist check");
		console.log(result);
		
		$("#reminder__list").empty();
		
		for (reminder of result) {
			var inner;
			if(reminder.priority == 0){
				inner = 'check_box_outline_blank';
			} else {
				inner = 'check_box';
			}
			
			var  reminderItem = 
				`<ul id="reminder-${reminder.id}" class="d-flex flex-column-reverse todo-list">
				<li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color:#8d8d8d ">${inner}</i>
				<div class="form-check" id="reminderList">
				<label class="form-check-label" id="reminder__content__list-${reminder.priority}"> ${reminder.content }</label>
				</div>
				<i onclick="reminderDelete(${reminder.id})" class="material-icons"	id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i>
				</li>
				</ul>`;
			

			
			$("#reminder__list").append(reminderItem);
		}
		

	}).fail(function(error) {
		alert("Todolist 실패");
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
		
		
		
		alert("Todolist 수정 성공");
		console.log(result);
		renderReminderList(result);
		
	}).fail(function() {
		alert("Todolist 수정 실패(function2)");
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
			alert("Todolist 삭제 성공");
			var reminderItem = $("#reminder-" + reminderId);
			reminderItem.remove();
			
		} else {
		
			alert("Todolist 삭제 실패");
		}
		
		
	}).fail(function(error) {
		alert("Todolist 삭제 실패");
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
				alert("Todolist 작성 실패");
			} else {
				alert("Todolist 작성 성공");
				$("#reminder__list").empty();
				console.log(result);
				
			
				$("#reminder__content__form").val("");
				renderReminderList(result);
				
				
			}
			
		}).fail(function(error) {
			alert("Todolist 작성 실패");
		});
}


function renderReminderList(reminders) {
	for(var reminder of reminders){
	
		$("#reminder__list").append(makeReminderItem(reminder));
	}
}




function makeReminderItem(reminder) {
	
	
	var inner;
	
	if(reminder.priority == 1){
		inner = 'check_box';
		
		
	} else {
		inner = 'check_box_outline_blank';
		
	}


		var reminderItem =`<ul id="reminder-${reminder.id}" class="d-flex flex-column-reverse todo-list">
					   <li><i onclick="reminderCheck(${reminder.id}, ${reminder.priority})" class="material-icons" id="reminderCheck-${reminder.priority}" style="cursor: pointer; color:#8d8d8d ">${inner}</i>
					   <div class="form-check" id="reminderList">
				       <label class="form-check-label" id="reminder__content__list-${reminder.priority}" style="text-decoration; text-decoration-color: #8d8d8d;"> ${reminder.content }</label>
					   </div>
					   <i onclick="reminderDelete(${reminder.id})" class="material-icons"	id="delList" style="cursor: pointer; font-size: 20px; color: #8d8d8d;">delete</i>
					   </li>
					   </ul>`;
	
	
	return reminderItem;
		
		
}



