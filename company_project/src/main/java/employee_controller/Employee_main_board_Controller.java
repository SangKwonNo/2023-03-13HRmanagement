package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Board_01;
import model.board_01DAO;


public class Employee_main_board_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("-- Employee_main_board_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔


		return "/employee_page/employee_main_board";

	}

}
