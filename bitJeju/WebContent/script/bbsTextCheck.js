$(document).ready(function() {
			var today = new Date();
		    var dd = today.getDate();
		    var mm = today.getMonth()+1;
		    var yyyy = today.getFullYear();

		    if(dd<10){
		        dd = '0'+dd
		    }
		    if(mm<10){
		        mm = '0'+mm
		    }
		    today = yyyy + '-' + mm + '-' + dd;
		    $("input[name='endDay']").val(today);
		    
		    var form = $("form");
			$("button[type='submit']").on("click", function(e) {
				e.preventDefault();
				$("form").hide();
				var text;
				var replaceText = [ [ /&/g, "&amp;" ],
						[ /</g, "&lt;" ], [ />/g, "&gt;" ],
						[ /"/g, "&quot;" ] ];
				
				text = $("input[name='title']").val();
				console.log(text);
				for ( var i in replaceText) {
					text = text.replace(replaceText[i][0],
							replaceText[i][1]);
				}
				$("input[name='title']").val(text);
				
				text = null;
				text = $("textarea[name='contents']").val();
				for ( var i in replaceText) {
					text = text.replace(replaceText[i][0],
							replaceText[i][1]);
				}
				text = text.replace(/(\r\n|\n)/g, '<br/>');
				$("textarea[name='contents']").val(text);
				
				text = null;
				text = $("#inputCompany").val();
				for ( var i in replaceText) {
					text = text.replace(replaceText[i][0], 
							replaceText[i][1]);
				}
				$("#inputCompany").val(text);
				
				form.submit();
			});
		    
});