package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Employee_main_list_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Employee_main_list_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔
		List<Employee> list = employeeDAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}
		return "/employee_page/employee_main_list";
	}

}
