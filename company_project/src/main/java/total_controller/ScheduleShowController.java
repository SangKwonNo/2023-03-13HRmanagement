package total_controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import admin_controller.Controller;
import hrmanagement.vo.Calendar;
import model.calendarDAO;

public class ScheduleShowController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Calendar> calendarInfo = calendarDAO.getInstance().getSchedule();
		if (calendarInfo.size() == 0) {
			return null;
		}
		System.out.println("test" + calendarInfo.get(0).getStart());
		String json = new Gson().toJson(calendarInfo);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
		System.out.println(json);
		return null;
	}

}
