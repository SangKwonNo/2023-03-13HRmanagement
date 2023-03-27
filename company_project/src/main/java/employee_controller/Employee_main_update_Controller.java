package employee_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Employee_main_update_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Employee_main_update_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔
		HttpSession session = request.getSession();
		String log = (String) session.getAttribute("id");

		Employee e = employeeDAO.getInstance().getVo(log);
		request.setAttribute("loginEmployee", e);

		String imgNum = "profile_" + e.getNum() + ".JPG";
		System.out.println(imgNum);

		request.setAttribute("imgNum", imgNum);

		return "/employee_page/employee_main_update";
	}

}
