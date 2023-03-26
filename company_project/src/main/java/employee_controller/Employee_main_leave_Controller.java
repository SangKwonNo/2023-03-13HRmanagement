package employee_controller;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin_controller.Controller;
import hrmanagement.vo.Attendance;
import model.attendanceDAO;
import model.employeeDAO;

public class Employee_main_leave_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LocalDateTime now = LocalDateTime.now();
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		int em_num = employeeDAO.getInstance().getNum(id);
		String nowDate = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:00"));
		String formatedNow = now.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		Attendance a = new Attendance();
		a.setCheck_in(nowDate);
		a.setCheck_out(nowDate);
		a.setEm_num(em_num);
		a.setMemo("퇴근");
		List<Attendance> check_in = attendanceDAO.getInstance().isDate(a);
		int check = 0;
		for(Attendance at : check_in) {
			System.out.println(at.getCheck_in().substring(0,10));
			if (at.getCheck_in().substring(0,10).equals(formatedNow)) {
				check++;
			}
		}
		if (check != 1) {
			response.getWriter().print("error");
			return null;
		}
		attendanceDAO.getInstance().insertWork(a);
		
		return null;
	}

}
