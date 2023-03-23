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
				window.location.href = "employee_main_salary_info.do";

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

  function saveAsImage() {
       /* // 캡처할 화면 영역 지정*/
        var rect = document.documentElement.getBoundingClientRect();
        var width = rect.width;
        var height = rect.height;
        var x = rect.x;
        var y = rect.y;
        
      /*  // Canvas 생성*/
        var canvas = document.createElement("canvas");
        canvas.width = width;
        canvas.height = height;
        
      /*  // Canvas에 캡처된 화면 그리기*/
        var ctx = canvas.getContext("2d");
        ctx.drawWindow(window, x, y, width, height, "rgb(255,255,255)");
        
      /*  // 이미지 파일로 저장*/
        var imgData = canvas.toDataURL("image/png");
        var a = document.createElement("a");
        a.href = imgData;
        a.download = "screen.png";
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
      }

  /*function saveAsImage() {

    html2canvas(document.body).then(function(canvas) {
      var imgData = canvas.toDataURL('image/jpeg');
      
      var link = document.createElement('a');
      link.download = 'image.jpg';
      link.href = imgData;
      link.click();
    });
  }*/

