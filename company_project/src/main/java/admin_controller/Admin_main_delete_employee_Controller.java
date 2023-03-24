package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.employeeDAO;

public class Admin_main_delete_employee_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println("num  =  " + num);
		employeeDAO.getInstance().deleteEmployee(num);
		String ctx = request.getContextPath();
		return "redirect:" + ctx + "/admin_main_list.do";
	}

}
