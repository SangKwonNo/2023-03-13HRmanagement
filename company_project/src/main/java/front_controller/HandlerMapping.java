package front_controller;

import java.util.HashMap;

import admin_controller.Admin_main_Controller;
import admin_controller.Admin_main_board_Controller;
import admin_controller.Admin_main_calendar_Controller;
import admin_controller.Admin_main_list_Controller;
import admin_controller.Admin_main_salary_Controller;
import admin_controller.Admin_main_salary_info_Controller;
import admin_controller.Admin_main_schedule_Controller;
import admin_controller.Controller;
import admin_controller.Login_Check_Controller;
import admin_controller.Pw_Check_Controller;
import employee_controller.Employee_main_Controller;
import employee_controller.Employee_main_board_Controller;
import employee_controller.Employee_main_calendar_Controller;
import employee_controller.Employee_main_list_Controller;
import employee_controller.Employee_main_salary_Controller;
import employee_controller.Employee_main_salary_info_Controller;
import employee_controller.Employee_main_schedule_Controller;
import employee_controller.Employee_main_update_Controller;
import total_controller.LogoutController;
import total_controller.MainController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login_check.do", new Login_Check_Controller());
		mappings.put("/pw_check.do", new Pw_Check_Controller());

		mappings.put("/employee_main_board.do", new Employee_main_board_Controller());
		mappings.put("/employee_main_calendar.do", new Employee_main_calendar_Controller());
		mappings.put("/employee_main_list.do", new Employee_main_list_Controller());
		mappings.put("/employee_main_salary_info.do", new Employee_main_salary_info_Controller());
		mappings.put("/employee_main_salary.do", new Employee_main_salary_Controller());
		mappings.put("/employee_main_schedule.do", new Employee_main_schedule_Controller());
		mappings.put("/employee_main_update.do", new Employee_main_update_Controller());
		mappings.put("/employee_main.do", new Employee_main_Controller());

		mappings.put("/admin_main_board.do", new Admin_main_board_Controller());
		mappings.put("/admin_main_calendar.do", new Admin_main_calendar_Controller());
		mappings.put("/admin_main_list.do", new Admin_main_list_Controller());
		mappings.put("/admin_main_salary_info.do", new Admin_main_salary_info_Controller());
		mappings.put("/admin_main_salary.do", new Admin_main_salary_Controller());
		mappings.put("/admin_main_schedule.do", new Admin_main_schedule_Controller());
		mappings.put("/admin_main.do", new Admin_main_Controller());
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/main.do", new MainController());
	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
