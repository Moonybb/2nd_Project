$(document).ready(function() {
		var text = $("textarea[name='contents']").val();
		var replaceText = [ [ /&/g, "&amp;" ],
							[ /</g, "&lt;" ], [ />/g, "&gt;" ],
							[ /"/g, "&quot;" ] ];
		for ( var i in replaceText) {
			text = text.replace(replaceText[i][1],replaceText[i][0]);
		}
		text = text.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');
		console.log(text);
		text = $("textarea[name='contents']").val(text);
		
		var form = $("form");
		$("button[type='submit']").on("click", function(e) {
			e.preventDefault();
			$("form").hide();
			var text = null;
			
			text = $("input[name='title']").val();
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
			form.submit();
			text = null;
			text = $("#inputCompany").val();
			for ( var i in replaceText) {
				text = text.replace(replaceText[i][0],replaceText[i][1]);
			}
			text = text.replace(/(<br>|<br\/>|<br \/>)/g, '\r\n');
			text = $("#inputCompany").val(text);
		});
	});
