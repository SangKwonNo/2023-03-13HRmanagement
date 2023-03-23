package employee_controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_controller.Controller;
import hrmanagement.vo.Companyrank;
import hrmanagement.vo.Employee;
import hrmanagement.vo.Salary_info;
import model.salary_infoDAO;

public class Employee_main_salary_info_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Employee_main_salary_info_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔

		salary_infoDAO dao = salary_infoDAO.getInstance();
		
		HttpSession session = request.getSession();
		Employee loginEmployee = (Employee) session.getAttribute("loginEmployee");
		String em_rn_name = loginEmployee.getEm_rn_name();
		Companyrank c = dao.getCompanyRankInfo(em_rn_name);
		
		int selectDate = 0;
		if (request.getParameter("selectDate") != null) {
			selectDate = Integer.parseInt(request.getParameter("selectDate"));
			System.out.println("selectDate : " + selectDate);
		}
		
		int month = dao.subtractMonth(selectDate);
		LocalDate today = LocalDate.now();
		
		System.out.println("month : " + month);
		
		request.setAttribute("em", loginEmployee);
		request.setAttribute("vo", c);
		request.setAttribute("today", today);
		request.setAttribute("month", month);
		request.setAttribute("selectDate", selectDate);
		
		return "/employee_page/employee_main_salary_info";

	}

}
