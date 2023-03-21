let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/", 2));
function pwCheck() {
	if ($("#pw").val() == '') {
		alert('비밀번호를 입력해주세요.');
		return false;
	}
	$.ajax({
		url: ctx + '/pw_check.do',
		type: "POST",
		data: {
			"pw": $("#pw").val()
		},
		success: function(data) {
			if (data == "pass") {
				alert("확인되었습니다");
				$("#pw").val("");
				window.location.href = "employee_salary_info.do";

			} else {
				alert('비밀번호를 확인해주세요.');
				window.location.href = "employee_main.do";

			} 

		},
		error: function() {
			console.log("salary_info_err")
		}
	});
}
