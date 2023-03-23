package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.Employee;
import model.employeeDAO;

public class Login_Check_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("- getParameter id : " + id + " / pw : " + pw);

		employeeDAO dao = employeeDAO.getInstance();
		Employee vo = new Employee();
		vo.setId(id);
		vo.setPw(pw);

		Employee loginEmployee = dao.loginTest(vo); // 값이 없으면 null 리턴함
		System.out.println("loginEmployee : " + loginEmployee);
		String login_id = null;
		int em_num = 0;
		if (loginEmployee != null) {
			em_num = loginEmployee.getEm_num();
			login_id = loginEmployee.getId();
			System.out.println("loginEmployee : " + loginEmployee + " / em_num : " + em_num);
		}
		
		HttpSession session = request.getSession();
		if (login_id != null) {
			session.setAttribute("loginEmployee", loginEmployee);
			session.setAttribute("loginNum", em_num);
			response.getWriter().print("employee");
		} else if (id.equals("admin")) {
			session.setAttribute("loginNum", "0000");
			response.getWriter().print("admin");
		} else {
			response.getWriter().print("null");
		}
		
		System.out.println("null- getParameter id : " + id + " / pw : " + pw + " / em_num : " + em_num);
		System.out.println("sessin(loginNum) : " + session.getAttribute("loginNum"));

		return null;
	}

}
