package admin_controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.Companyrank;
import hrmanagement.vo.Employee;
import model.employeeDAO;
import model.salary_infoDAO;

public class Admin_main_salary_show_info_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		salary_infoDAO dao = salary_infoDAO.getInstance();

		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		Employee e = employeeDAO.getInstance().getVo(id);
		String em_rn_name = e.getEm_rn_name();
		Companyrank c = dao.getCompanyRankInfo(em_rn_name);

		List<Employee> list = employeeDAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}

		int selectDate = 0;
		if (request.getParameter("selectDate") != null) {
			selectDate = Integer.parseInt(request.getParameter("selectDate"));
			System.out.println("selectDate : " + selectDate);
		}

		int month = dao.subtractMonth(selectDate);
		LocalDate today = LocalDate.now();

		System.out.println("month : " + month);

		request.setAttribute("em", e);
		request.setAttribute("vo", c);
		request.setAttribute("today", today);
		request.setAttribute("month", month);
		request.setAttribute("selectDate", selectDate);

		return "/admin_page/admin_main_salary_show_info";
	}

}
