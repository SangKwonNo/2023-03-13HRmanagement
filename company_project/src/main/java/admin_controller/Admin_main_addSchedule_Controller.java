package admin_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import hrmanagement.vo.Calendar;
import model.calendarDAO;

public class Admin_main_addSchedule_Controller implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		
		Calendar c = new Calendar(1, title, start, end);
		calendarDAO.getInstance().saveSchedule(c);
		return null;
	}

}
