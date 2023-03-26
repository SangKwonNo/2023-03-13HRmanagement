package employee_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import admin_controller.Controller;
import hrmanagement.vo.Attendance;
import model.attendanceDAO;
import model.employeeDAO;

public class Employee_main_calendarShow_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		int em_num = employeeDAO.getInstance().getNum(id);
		List<Attendance> list = attendanceDAO.getInstance().getList(em_num);
		
		String json = new Gson().toJson(list);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
		System.out.println(json);
		
		return null;
	}

}
