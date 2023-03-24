package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hrmanagement.vo.Board_01;
import hrmanagement.vo.Employee;
import model.board_01DAO;
import model.employeeDAO;

public class Admin_main_board_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("-- Admin_main_board_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔

		int num = Integer.parseInt(request.getParameter("num"));
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		board_01DAO.getInstance().BoardUpdate(num, subject, contents);
		
		return null;
	}
}
