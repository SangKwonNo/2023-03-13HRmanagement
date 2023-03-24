package admin_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Admin_main_salary_info_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Admin_main_salary_info_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔
		List<Employee> list = employeeDAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}

		return "/admin_page/admin_main_salary_info";
	}
}
