let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));

function idCheck() {
	if ($("#id").val() == '') {
		alert('아이디를 입력해주세요.');
		return false;
	} else if ($("#pw").val() == '') {
		alert('비밀번호를 입력해주세요.');
		return false;
	}
	$.ajax({
		url: ctx + '/login_check.do',
		type: "POST",
		data: {
			"id": $("#id").val(),
			"pw": $("#pw").val()
		},
		success: function(data) {
			console.log("login_script_success");
			console.log("data", data);
			if (data == 'fail') {
				alert("아이디와 패스워드를 확인해주세요.");
				$("#id").val("");
				$("#pw").val("");

			} else if (data == 'employee') {
				alert($("#id").val() + "님 로그인");
				window.location.href = "employee_main.do";

			} else if (data == 'admin') {
				alert("관리자 로그인");
				window.location.href = "admin_main.do";
			}

		},
		error: function(request, status, error) {
			console.log("login_script_error")
			console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
		}
	});
}



