package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Employee_show_info_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		Employee info = employeeDAO.getInstance().getInfo(num);
		List<Employee> list = employeeDAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}
		System.out.println("info" + info);
		System.out.println("num" + num);
		request.setAttribute("info", info);
		return "/employee_page/employee_main_showinfo";
	}

}
