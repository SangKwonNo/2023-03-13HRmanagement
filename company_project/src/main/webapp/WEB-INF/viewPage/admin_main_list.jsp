<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 사원목록 관리</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_list.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측 아이콘 끝 -->

			<!-- 왼쪽 메인화면 시작 -->
			<div class="left-container">
				<div class="left-list-container">

					<div class="left-list-title">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVox9VYqbX///+m3OVLpLHW6uz3+/yBz9udytFmxNJ1tsDq8/RaqrZds8C+3uLH4eVir7re7O+32uB0zNjL4+eQ1N/f8/bQ7fHm8/SEvsep0dfy9/h6ucOPwsrH6e7R7fGz4emWzdZpucWkzNOs3+ckgrOTAAAFBElEQVR4nO3ca3OaQBSAYUUkiEbwlqqoTZv+/99Y004nWs/BZffcmDnvZzObJ8C6C8bRyPM8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8zwts87LbTaTa7V42srzZZnJ5KzK5irfL5GUmKJx8l+T9Q07EfJtLK+77rL0Inaqbbyq+z76JEBWBWXaREL7LX4I3vfNPN7u9JjBrf3ATNxdVYJbVP5mJO51p9Kvi8MpLfFcGZtnHmJWoOpH+rW5YiZs3bWC2r8acxBfVt4o/FVchI9GKkI9oRshGtCPkIhoSMhEtCXmIpoQsRFtCDqIxIQPRmpCeaE5ITrQnpCYaFBITnwmLdn6t5fw7PAhpid3CYrU+NItFcyq3c0EhKbFTuDo2+d8h8/Gh5jqOgJCS2CVcVvntqCXTTTlISEjsEC6b+0HzAw8RFNIRceH/wGtnlvtysJCMiAoLYNDFEX7tdBnSqp+QiogKjzkwaDWFXlouwir7CYmImLBdQGPmH8BL18gv+FCz7CekIWLCIzzmAXhb/ICONtRi3VNIQsSEZ3jIagscQ/BwAzXAD3cLKYiYEBm1qR9fOi+boCpknuoSEhARIToqdCm12zokcJZ6JkwnUggT6xYmEwnOUmZhKhETHhAhPFmwChOJmBB5k+NYmj4VphEx4T78HZ9fmEREV20luGoDT9JiP+3Z3Qo+QJhCRIXzx60FsvIujuO8Z6fbVXiIMIHYsXt6HAa+Cpeha5qv8vPNsEHCeGLHDvj/pWl+gqeZ4HXpTbd/qzBhNLFD2K7vTtT8jMyjwFb5abd76UBhLLHrPk1xdxSRvc/1LyFxHcYTO4Tr093BWTQVYhSYSxOIqLCGzr2KYdHWQxhFRITtGZk+sItRRhhDhIXbCpsf7y8hcWEEERSCZ+g/Ivniu5ewPxESbrun/wbbyooIx6/pwv3pyVt4RXst9hSOk4UFchPqq/w8bGH9fBGG3BYcijBkDVZRPsCQFi5D1tHYA4xBCMNGOQU9Ei6ma7D67qeFhdOwrVDQm2Lxga28735cWAg+cgIKOU236NY4YgdMJjyFjXL3K2J1zMoRO2AqYehuNuS24rRBV7el2jGch95zCVmAF3UFPyptyqgdMIlwFbpLD5tq9iu4yB0whTCbh0b36RrxNY14LnShC13oQhe60IUudKEFYcss1P3OiM/2vEIb/4/PKRz90gZmx56f5egr3GlfiC3yEToyof53m/T9KEdf4WiiexDnfQ9hf6Hut5sUyEfmSYUjzfP0yfNmIuHm+5CAMcLRZqn0fW3rCGCUcDT7MVX4zr1tGeGLFI5mP8vlSvR7E1fLEn2swSEczV6b6nAupTofqpgTNEV4JcaOKF2scDjEaOFgiPHCoRAThAMhpgiHQUwSDoKYJhwCMVE4AGKq0D4xWWiemC60TiQQGidSCG0TSYSmiTRCy0QioWEildAukUxolkgntEokFBolUgptEkmFJom0QotEYqFBIrXQHpFcaI5IL7RGZBAaI3IIbRFZhKaIPEJLRCahISKX0A6RTWiGyCe0QmQUGiFyCm0QWYUmiLxCC0RmoQEit1CfyC5UJ/ILtYkCQmWihFCXKCJUJcoINYlCQkWilFCPKCZUI8oJtYiCQiWipFCHKCpUIcoKNYjCQgWitFCeKC4UJ8oLpYkKQmGihlCWqCIUJeoIJYlKQkHib0sCwd04iujdAAAAAElFTkSuQmCC"
							alt="">
						<div class="name">사원 리스트</div>
					</div>

					<div class="left-list-content">

						<!-- 검색바 (이건 이미지 파일 중 하나입니다 : SVG) 시작 -->
						<div class="left-list-search">
							<svg xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
								width="256" height="256" viewBox="0 0 256 256"
								xml:space="preserve">

                                <defs>
                                </defs>
                                <g
									style="stroke: none; stroke-width: 0; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: none; fill-rule: nonzero; opacity: 1;"
									transform="translate(1.4065934065934016 1.4065934065934016) scale(2.81 2.81)">
                                    <path
									d="M 87.803 77.194 L 68.212 57.602 c 9.5 -14.422 7.912 -34.054 -4.766 -46.732 c 0 0 -0.001 0 -0.001 0 c -14.495 -14.493 -38.08 -14.494 -52.574 0 c -14.494 14.495 -14.494 38.079 0 52.575 c 7.248 7.247 16.767 10.87 26.287 10.87 c 7.134 0 14.267 -2.035 20.445 -6.104 l 19.591 19.591 C 78.659 89.267 80.579 90 82.498 90 s 3.84 -0.733 5.305 -2.197 C 90.732 84.873 90.732 80.124 87.803 77.194 z M 21.48 52.837 c -8.645 -8.646 -8.645 -22.713 0 -31.358 c 4.323 -4.322 10 -6.483 15.679 -6.483 c 5.678 0 11.356 2.161 15.678 6.483 c 8.644 8.644 8.645 22.707 0.005 31.352 c -0.002 0.002 -0.004 0.003 -0.005 0.005 c -0.002 0.002 -0.003 0.003 -0.004 0.005 C 44.184 61.481 30.123 61.48 21.48 52.837 z"
									style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-linejoin: miter; stroke-miterlimit: 10; fill: #999; fill-rule: nonzero; opacity: 1;"
									transform=" matrix(1 0 0 1 0 0) " stroke-linecap="round" />
                                </g>
                            </svg>
							<input type="text" placeholder="Search">
						</div>
						<!-- 검색바 (이건 이미지 파일 중 하나입니다 : SVG) 끝 -->

						<!-- 사원 목록 테이블 시작 -->
						<div class="left-list-employeelist">
							<div class="left-employee-attribute">
								<div class="attribute"></div>
								<div class="attribute"></div>
								<div class="attribute"></div>
								<div class="attribute"></div>
								<div class="attribute"></div>
							</div>
							<div class="left-employees">
								<div class="employee">
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
								</div>
								<div class="employee">
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
								</div>
								<div class="employee">
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
								</div>
								<div class="employee">
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>

								</div>
								<div class="employee">
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
									<div class="box"></div>
								</div>
							</div>
							<!-- 사원 목록 테이블 끝 -->

							<!-- 페이지네이션 (이전 1 2 3 4 ... 이후) 시작-->
							<div class="left-pagination">
								<!-- 구현해야함! -->
							</div>
							<!-- 페이지네이션 (이전 1 2 3 4 ... 이후) 끝-->

						</div>
					</div>
				</div>
			</div>
			<!-- 왼쪽 메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">
				<div class="right-list-container">
					<div class="right-employeeinfo">
						<div class="employeeinfo1">
							<div class="img">
								<img src="" alt="">
							</div>
							<div class="infobox">
								<div></div>
								<div class="row">
									<div></div>
									<div></div>
								</div>
								<div></div>
							</div>
						</div>
						<div class="employeeinfo2">
							<div></div>
							<div></div>
							<div></div>
							<div></div>
						</div>
						<div class="chatbox"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 오른쪽 메인화면 끝 -->

		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>