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

		int check = dao.loginTest(vo); // 값이 없으면 null 리턴함
		if (check <= 0) {
			response.getWriter().print("fail");
			return null;
		}
		HttpSession session = request.getSession();
		session.setAttribute("id", id);
		if (id.equals("admin")) {
			response.getWriter().print("admin");
		} else {
			response.getWriter().print("employee");
		}

		return null;
	}

}
