package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Board_01;
import hrmanagement.vo.Employee;
import model.board_01DAO;
import model.employeeDAO;


public class Employee_main_board_Controller implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("-- Employee_main_board_Controller --"); // 에러 or 현재접근 위치 확인용 콘솔

		String contents = request.getParameter("contents");
		int num = Integer.parseInt(request.getParameter("num"));
		
		Employee e = new Employee();
		e.setNum(num);
		e.setMemo(contents);
		
		employeeDAO.getInstance().memoUpdate(e);
	
		return null;

	}

}
