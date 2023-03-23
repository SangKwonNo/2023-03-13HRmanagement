package admin_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.calendarDAO;

public class Admin_main_delSchedule_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("no"));
		System.out.println(num);
		calendarDAO.getInstance().deleteSchedule(num);
		return null;
	}

}
