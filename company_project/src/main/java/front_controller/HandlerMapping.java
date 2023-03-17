package front_controller;

import java.util.HashMap;

import admin_controller.Controller;
import employee_controller.Employee_main_Controller;
import employee_controller.Employee_main_board_Controller;
import employee_controller.Employee_main_calendar_Controller;
import employee_controller.Employee_main_list_Controller;
import employee_controller.Employee_main_salary_Controller;
import employee_controller.Employee_main_salary_info_Controller;
import employee_controller.Employee_main_schedule_Controller;
import employee_controller.Employee_main_update_Controller;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/employee_main_board.do", new Employee_main_board_Controller());
		mappings.put("/employee_main_calendar.do", new Employee_main_calendar_Controller());
		mappings.put("/employee_main_list.do", new Employee_main_list_Controller());
		mappings.put("/employee_main_salary_info.do", new Employee_main_salary_info_Controller());
		mappings.put("/employee_main_salary.do", new Employee_main_salary_Controller());
		mappings.put("/employee_main_schedule.do", new Employee_main_schedule_Controller());
		mappings.put("/employee_main_update.do", new Employee_main_update_Controller());
		mappings.put("/employee_main.do", new Employee_main_Controller());

	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
