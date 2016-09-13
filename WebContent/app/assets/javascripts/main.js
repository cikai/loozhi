$(document).ready(function() {
	$("#getBusline").on("click", function() {
		getLineInfo();
	});
});

function getLineInfo() {
	$.ajax({
		url : '/loozhi/buslineServlet',
		data : "city=" + $("#city").val() + "&line=" + $("#line").val(),
		method : 'get',
		dataType : 'json',
		success : function(data) {
			console.log(data);
		}
	});
}
