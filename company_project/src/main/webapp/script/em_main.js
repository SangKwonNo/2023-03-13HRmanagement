let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));

function detailView(index) {
	window.location.href = "employee_main.do?id=" + index;
}


function memoSave(){
	var contents = $("#contents").val();
	var num = $("#num").val();

console.log("(2/3)updateBoard 접근")
console.log(num)

	$.ajax({
		url: ctx + '/employee_main_board.do',
		method: "POST",
		data: {
			contents: contents,
			num: num,
		},
		success: function(response) {
			console.log("(3/3)success 접근")
			window.location.href = "employee_main.do";
		},
		error: function(xhr, status, error) {
			console.log("(3/3)error 접근")
			console.error(error);
		}
	});
}
