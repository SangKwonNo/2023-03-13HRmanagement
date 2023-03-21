<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 급여 정보확인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_salary_info.css">
</head>

<body>
    <div class="container">
        <div class="main">

            <!-- 좌측아이콘 시작 -->
           <jsp:include page="../../icon_bar.jsp" />
            <!-- 좌측아이콘 끝 -->

            <!-- 왼쪽메인화면 시작 -->
            <div class="left-container">
                <div class="selectDate">
                    <select class="selectDateBox" name="selectDate">
                        <option align="center" value="1">23.02.10 - 23.03.09</option>
                        <option align="center" value="1">23.01.10 - 23.02.09</option>
                        <option align="center" value="1">22.12.10 - 23.01.09</option>
                    </select>
                </div>
                <div class="salaryViewBox">
                    <div class="salaryView_base salaryView">
                        <div class="w300">기본급여</div>
                        <div class="w300"></div>
                        <div class="w300">2,XXX,XXX</div>
                    </div>
                    <div class="salaryView_over salaryView">
                        <div class="w300">초과근무</div>
                        <div class="w300">XX 시간</div>
                        <div class="w300">3XX,XXX</div>
                    </div>
                    <div class="salaryView_holi salaryView">
                        <div class="w300">휴일근무</div>
                        <div class="w300">XX 시간</div>
                        <div class="w300">3XX,XXX</div>
                    </div>
                </div>
                <div class="textBox">
                    <div class="fontSize20">
                        지급날짜 : 23. 03. 10<br><br>
                        예상지급액 : 2,XXX,XXX<br><br>
                    </div>
                    <div>
                        위 금액은 세전 예상금액이며,<br>실제 지급시 상세 내용에 따라 변동이 있을 수 있음
                    </div>
                </div>
                <div>
                    <input class="pdfPrint" type="button" type="button" value="명세표 PDF 저장">
                </div>
            </div>
            <!-- 왼쪽메인화면 끝 -->

            <!-- 오른쪽메인화면 시작 -->
            <div class="right-container">
                <div class="payStubBox"> <!-- A4 용지 시작 -->
                    <div class="payStubTop"> <!-- 제목 div start -->
                        <div class="payStubTitle colorBox1">
                            2023. 03 급여명세표
                        </div>
                    </div><!-- 제목 div end -->
                    <div class="payStubdate">
                        지급일 : 2023. 03. 11
                    </div>
                    <div class="payStubMain1"><!-- first div start -->
                        <table class="pSMain1-1"><!-- first_left div start -->
                            <tr>
                                <td class="colorBox1">성 명</td>
                                <td>김 가 렌</td>
                            </tr>
                            <tr>
                                <td class="colorBox1">입 사 일</td>
                                <td>2020. 03. 17</td>
                            </tr>
                            <tr>
                                <td class="colorBox1">퇴 사 일</td>
                                <td>-</td>
                            </tr>
                        </table><!-- first_left div end -->
                        <table class="pSMain1-2"><!-- first_right div start -->
                            <tr>
                                <td class="colorBox1">생 년 월 일</td>
                                <td>1986. 07. 18</td>
                            </tr>
                            <tr>
                                <td class="colorBox1">부 서 명</td>
                                <td>디자인부</td>
                            </tr>
                            <tr>
                                <td class="colorBox1">직 책</td>
                                <td>디자이너</td>
                            </tr>
                        </table><!-- first_right div end -->
                    </div><!-- first div end -->
                    <div class="payStubMain2"><!-- second div start -->
                        <table class="pSMain2-1"><!-- second_left div start -->
                            <tr>
                                <td colspan="2" class="colorBox1">급 여 내 역</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">기 본 급</td>
                                <td>2,XXX,XXX</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">초 과 수 당</td>
                                <td>3XX,XXX</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">휴 일 수 당</td>
                                <td>3XX,XXX</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">식대</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">통신비</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">차량유지비</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">하늘..는비</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">레이니즘비</td>
                                <td>-</td>
                            </tr>
                            <!-- 갯수는 ?? -->
                            <tr>
                                <td class="colorBox2">총 액</td>
                                <td>2,6XX,XXX</td>
                            </tr>
                        </table><!-- second_left div end -->
                        <table class="pSMain2-2"><!-- second_right div start -->
                            <tr>
                                <td colspan="2" class="colorBox1">공 제 내 역</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">근로소득세</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">지방소득세</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">국민연금</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">고용보험</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">건강보험</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">xx세</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">많이세</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">공 제 합 계</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="colorBox2">실 지 급 액</td>
                                <td>2,6XX,XXX</td>
                            </tr>
                        </table><!-- second_right div end -->
                    </div><!-- second div end -->

                </div> <!-- A4 용지 끝 -->
            </div>
            <!-- 오른쪽메인화면 끝 -->

        </div>
        <div class="footer">
        </div>
    </div>
    <footer>

    </footer>
</body>

</html>