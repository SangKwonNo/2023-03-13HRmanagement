package admin_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.Board_01;
import hrmanagement.vo.Employee;
import model.board_01DAO;
import model.employeeDAO;

public class Admin_main_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Admin_main_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔
		
		Employee e = new Employee();
		
		List<Board_01> list = board_01DAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}
		
		int log = 1;
		if (request.getParameter("id") != null) {
			log = Integer.parseInt(request.getParameter("id"));
		}
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		e = employeeDAO.getInstance().getVo(id);

		Board_01 board = list.get(log - 1);
		request.setAttribute("board", board);
		request.setAttribute("e", e);
		
		return "/admin_page/admin_main";
	}
}
