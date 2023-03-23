<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>사원 일정 조회</title>
    <link rel="stylesheet" href="${ctx}/css/index.css">
    <link rel="stylesheet" href="${ctx}/css/employee_main.css">
    <link rel="stylesheet" href="${ctx}/css/employee_main_schedule.css">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
</head>

<body>
    <div class="conta">
        <nav>
        </nav>
        <div class="mai">

            <!-- 좌측아이콘 시작 -->
            <jsp:include page="../../icon_bar.jsp" />
            <!-- 좌측아이콘 끝 -->

            <!-- 왼쪽 메인화면 시작 -->
            <div class="main-container">
                <script type="text/javascript">
                    document.addEventListener('DOMContentLoaded', function() {
                        var calendarEl = document.getElementById('calendar');
                        calendar = new FullCalendar.Calendar(calendarEl, {
                            timeZone : 'UTC',
                            headerToolbar : {
                                left : 'prev,next today',
                                right : 'dayGridMonth,timeGridWeek,timeGridDay'
                            },
                            selectable : true,
                            selectMirror : true,
                            select : function(info) { // 버튼 클릭 시 이벤트 추가
                                $("#calendarModal").modal("show"); // modal 나타내기
                                $("#calendar_start_date").html(info.startStr);
                                $("#addCalendar").unbind("click");
                                $("#addCalendar").on(
                                        "click",
                                        function(event) { // modal의 추가 버튼 클릭 시
                                            var start_date = info.startStr;
                                            var content = $("#calendar_content").val();
                                            var end_date = $("#calendar_end_date").val();
            
                                            //내용 입력 여부 확인
                                            if (content == null || content == "") {
                                                alert("내용을 입력하세요.");
                                            } else if (end_date == "") {
                                                alert("날짜를 입력하세요.");
                                            } else if (new Date(end_date)
                                                    - new Date(start_date) < 0) { // date 타입으로 변경 후 확인
                                                alert("종료일이 시작일보다 먼저입니다.");
                                            } else { // 정상적인 입력 시
                                                console.log(start_date);
                                                console.log(content);
                                                console.log(info.startStr);
                                                console.log(end_date);
                                                $.ajax({
                                                    url : '${ctx}/admin_main_addSchedule.do',
                                                    type : 'GET',
                                                    data : {
                                                        "title" : content,
                                                        "start" : info.startStr,
                                                        "end" : end_date
                                                    },
                                                    success : function() {
                                                        $("#calendar_start_date").val('');
                                                        $("#calendar_content").val('');
                                                        $("#calendar_end_date").val('');
                                                        $('#calendarModal').modal("hide");
                                                    },
                                                    error : function() {
                                                        alert('작성실패');
                                                    }
                                                });
                                            }
                                        });
                            },
                            eventClick : function(info) {
                                $('#exampleModal').modal("show");
                                $('#confirm-delete').unbind("click");
                                $('#confirm-delete').click(function(event) {
                                    // 일정 삭제를 수행합니다.
                                    info.event.remove();
                                    // 모달 팝업을 닫습니다.
                                    $('#exampleModal').modal("hide");
                                });
                            },
                            eventRemove : function(info) {
                                // 이벤트를 데이터베이스에서 삭제합니다.
            
                                $.ajax({
                                    url : '${ctx}/admin_main_delSchedule.do',
                                    data : {
                                        "no" : info.event.id
                                    },
                                    type : 'POST',
                                    success : function(response) {
                                        console.log('이벤트가 삭제되었습니다.');
                                    }
                                });
                            },
                            editable : true, // false로 변경 시 draggable 작동 x 
                            displayEventTime : true,
                            locale : 'ko',
                            eventColor: 'gray',
                            events : function(info, successCallback, failureCallback) {
                                $.ajax({
                                    url : '${ctx}/scheduleShow.do',
                                    dataType : 'json',
                                    success : function(param) {
                                        let events = [];
                                        $.each(param, function(index, data) {
                                            events.push({
                                                title : data.title,
                                                start : data.start,
                                                end : data.end,
                                                id : data.num
                                            });
                                        });
                                        successCallback(events);
                                    }
                                });
            
                            }
                        // 시간 표시 x
                        });
                        calendar.render();
                    });
                </script>
            
            
                <div id="calendarBox">
                    <div id="calendar"></div>
                </div>
                <!-- modal 추가 -->
                
                
                <div class="modal fade" id="calendarModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <form action="">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
                                    <button type="button" class="close" data-dismiss="modal"
                                        aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label for="taskId" class="col-form-label">일정 내용</label> <input
                                            type="text" class="form-control" id="calendar_content"
                                            name="calendar_content"> <label for="taskId"
                                            class="col-form-label">시작 날짜</label>
                                        <p class="form-control" id="calendar_start_date"
                                            name="calendar_start_date"></p>
                                        <label for="taskId" class="col-form-label">종료 날짜</label> <input
                                            type="date" class="form-control" id="calendar_end_date"
                                            name="calendar_end_date">
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" onclick="getData()" class="btn btn-warning"
                                        id="addCalendar">추가</button>
                                    <button type="button" class="btn btn-secondary"
                                        data-dismiss="modal" id="sprintSettingModalClose"
                                        onclick="back()">취소</button>
                                </div>
                        </form>
                    </div>
                </div>
                
                          
                </div>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel"></h5>
                                <button type="button" class="close" data-dismiss="modal"
                                    aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body ">정말로 삭제하시겠습니까?</div>
                            <div class="modal-footer">
                                <p class="p-content"></p>
                                <button type="button" class="btn btn-primary" id="confirm-delete">삭제하기</button>
                                <button type="button" class="btn btn-secondary"
                                    data-dismiss="modal" onclick="back()">취소하기</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <script>
                    function back() {
                        $('#exampleModal').modal("hide");
                    }
                     function getData() {
                        $.ajax({
                            url : "${ctx}/scheduleShow.do",
                            type : "GET",
                            success : function() {
                                document.dispatchEvent(new Event('DOMContentLoaded'));
                            },
                            error : function() {
                                alert('데이터불러오기실패')
                            }
                        });
                    } 
                </script>
            </div>
            <!-- 왼쪽 메인화면 끝 -->

            <!-- 오른쪽 메인화면 시작 -->
            <!-- 오른쪽 메인화면 끝 -->

        </div>
        <div class="footer">

        </div>
    </div>
    <footer>

    </footer>
</body>

</html>