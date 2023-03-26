package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Board_01;
import model.board_01DAO;

public class Employee_main_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Employee_main_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔
		
		List<Board_01> list = board_01DAO.getInstance().getList();
		if (list != null) {
			request.setAttribute("list", list);
		}

		int log = 1;
		if (request.getParameter("id") != null) {
			log = Integer.parseInt(request.getParameter("id"));
		}
		Board_01 board = list.get(log-1);
		request.setAttribute("board", board);
		
		return "/employee_page/employee_main";

	}

}
