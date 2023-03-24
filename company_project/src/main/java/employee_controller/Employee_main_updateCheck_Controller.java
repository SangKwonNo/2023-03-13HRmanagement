package employee_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Employee_main_updateCheck_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		HttpSession session = request.getSession();
		String log = (String)session.getAttribute("id");
		/*
		 * int telCheck = employeeDAO.getInstance().telCheck(tel); int emailCheck =
		 * employeeDAO.getInstance().emailCheck(email); if (telCheck == 1) {
		 * response.getWriter().print("tel"); return null; } if (emailCheck == 1) {
		 * response.getWriter().print("email"); return null; }
		 */
		Employee e = new Employee();
		e.setName(name);
		e.setAddr(address);
		e.setPhone(tel);
		e.setEmail(email);
		e.setId(log);
		employeeDAO.getInstance().infoUpdate(e);
		
		return null;
	}

}
