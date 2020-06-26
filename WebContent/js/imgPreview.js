
	
$("#img__preview").on("change", function(e){
	var f = e.target.files[0];
	if(!f.type.includes("image")||f.size> 1024*1024*2){
		alert("이미지만 첨부할 수 있습니다.");
		return;
		
		
	}
	
	var reader = new FileReader();
	
	reader.onload = function(e){
		console.log(e.target.result);
		$("#img__wrap").attr("src", e.target.result);
		
	};
	
	reader.readAsDataURL(f); // 비동기 실행
	
	
});