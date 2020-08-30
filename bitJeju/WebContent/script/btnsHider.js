	$(document).ready(function() {
		var level = document.getElementById("isManager").value;
		if(level !=10 ){
			$("button[name='btns']").hide();
		}else{
			$("button[name='btns']").show();
		}
	});