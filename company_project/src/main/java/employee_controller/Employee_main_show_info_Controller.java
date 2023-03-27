package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Employee_main_show_info_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String log = (String) request.getParameter("id");
		Employee info = employeeDAO.getInstance().getVo(log);
		List<Employee> list = employeeDAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}
		System.out.println("info" + info);
		System.out.println("id" + log);
		request.setAttribute("info", info);
		
		String imgNum = "profile_" + info.getNum() + ".JPG";
		System.out.println(imgNum);

		request.setAttribute("imgNum", imgNum);
		
		return "/employee_page/employee_main_showinfo";
	}

}
