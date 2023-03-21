package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.employee;
import model.employeeDAO;

public class Pw_Check_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Pw_Check_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔

		
		String pw = request.getParameter("pw");
		System.out.println("- getParameter pw : " + pw);

		HttpSession session = request.getSession();
		int loginNum = (int) session.getAttribute("loginNum");
		System.out.println("loginNum : " + loginNum + " / pw : " + pw);

		String ctx = request.getContextPath();

		String checkPw = employeeDAO.getInstance().pw(loginNum);
		
		if (checkPw.equals(pw)) {
			response.getWriter().print("pass");
			System.out.println("employee- checkPw id : " + checkPw + " / pw : " + pw);

		} else {
			response.getWriter().print("null");
			System.out.println("employee- checkPw id : " + checkPw + " / pw : " + pw);

		}

		return null;
	}

}
