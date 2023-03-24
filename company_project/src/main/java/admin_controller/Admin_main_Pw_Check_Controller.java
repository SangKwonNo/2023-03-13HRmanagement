package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Admin_main_Pw_Check_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Pw_Check_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔

		
		String pw = request.getParameter("pw");
		System.out.println("- getParameter pw : " + pw);

		HttpSession session = request.getSession();
		String log = (String)session.getAttribute("id");
		System.out.println("logId : " + log + " / pw : " + pw);


		String checkPw = employeeDAO.getInstance().pw(log);
		
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
