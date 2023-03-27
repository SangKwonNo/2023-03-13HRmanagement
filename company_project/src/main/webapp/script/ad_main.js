let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));

function detailView(index) {
	window.location.href = "admin_main.do?id=" + index;
}

function showConfirm() {
	var result = confirm("내용을 수정 하시겠습니까?");
	if (result) {
		console.log("(1/3)showConfirm 접근")
		updateBoard();
		return true;
	} else {
		return false;
	}
}

function updateBoard() {
	var subject = $("#subject").val();
	var num = $("#num").val();
	var contents = $("#contents").val();

	console.log("(2/3)updateBoard 접근")

	$.ajax({
		url: ctx + '/admin_main_board.do',
		method: "POST",
		data: {
			subject: subject,
			num: num,
			contents: contents
		},
		success: function(response) {
			console.log("(3/3)success 접근")
			alert("수정되었습니다");
			window.location.href = "admin_main.do";
		},
		error: function(xhr, status, error) {
			console.log("(3/3)error 접근")
			console.error(error);
		}
	});
}

function memoSave() {
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
			window.location.href = "admin_main.do";
		},
		error: function(xhr, status, error) {
			console.log("(3/3)error 접근")
			console.error(error);
		}
	});
}
