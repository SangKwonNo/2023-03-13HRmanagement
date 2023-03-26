package front_controller;

import java.util.HashMap;

import admin_controller.Admin_main_Controller;
import admin_controller.Admin_main_Pw_Check_Controller;
import admin_controller.Admin_main_addSchedule_Controller;
import admin_controller.Admin_main_board_Controller;
import admin_controller.Admin_main_calendar_Controller;
import admin_controller.Admin_main_delSchedule_Controller;
import admin_controller.Admin_main_delete_employee_Controller;
import admin_controller.Admin_main_list_Controller;
import admin_controller.Admin_main_salary_Controller;
import admin_controller.Admin_main_salary_info_Controller;
import admin_controller.Admin_main_salary_show_info_Controller;
import admin_controller.Admin_main_schedule_Controller;
import admin_controller.Admin_main_show_info_Controller;
import admin_controller.Controller;
import admin_controller.Login_Check_Controller;
import employee_controller.Employee_main_Controller;
import employee_controller.Employee_main_Pw_Check_Controller;
import employee_controller.Employee_main_board_Controller;
import employee_controller.Employee_main_calendarShow_Controller;
import employee_controller.Employee_main_calendar_Controller;
import employee_controller.Employee_main_leave_Controller;
import employee_controller.Employee_main_list_Controller;
import employee_controller.Employee_main_salary_Controller;
import employee_controller.Employee_main_salary_info_Controller;
import employee_controller.Employee_main_schedule_Controller;
import employee_controller.Employee_main_show_info_Controller;
import employee_controller.Employee_main_updateCheck_Controller;
import employee_controller.Employee_main_update_Controller;
import employee_controller.Employee_main_work_Controller;
import total_controller.LogoutController;
import total_controller.MainController;
import total_controller.ScheduleShowController;
import total_controller.SearchController;
import total_controller.UploadController;

public class HandlerMapping {
	private HashMap<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login_check.do", new Login_Check_Controller());

		mappings.put("/employee_main_pw_check.do", new Employee_main_Pw_Check_Controller());
		mappings.put("/employee_main_board.do", new Employee_main_board_Controller());
		mappings.put("/employee_main_calendar.do", new Employee_main_calendar_Controller());
		mappings.put("/employee_main_list.do", new Employee_main_list_Controller());
		mappings.put("/employee_main_salary_info.do", new Employee_main_salary_info_Controller());
		mappings.put("/employee_main_salary.do", new Employee_main_salary_Controller());
		mappings.put("/employee_main_schedule.do", new Employee_main_schedule_Controller());
		mappings.put("/employee_main_update.do", new Employee_main_update_Controller());
		mappings.put("/employee_main.do", new Employee_main_Controller());
		mappings.put("/employee_show_info.do", new Employee_main_show_info_Controller());
		mappings.put("/employee_main_updateCheck.do", new Employee_main_updateCheck_Controller());
		mappings.put("/employee_main_work.do", new Employee_main_work_Controller());
		mappings.put("/employee_main_leave.do", new Employee_main_leave_Controller());
		mappings.put("/employee_main_calendarShow.do", new Employee_main_calendarShow_Controller());
		
		
		mappings.put("/admin_main_board.do", new Admin_main_board_Controller());
		mappings.put("/admin_main_calendar.do", new Admin_main_calendar_Controller());
		mappings.put("/admin_main_list.do", new Admin_main_list_Controller());
		mappings.put("/admin_main_salary_info.do", new Admin_main_salary_info_Controller());
		mappings.put("/admin_main_salary.do", new Admin_main_salary_Controller());
		mappings.put("/admin_main_schedule.do", new Admin_main_schedule_Controller());
		mappings.put("/admin_main.do", new Admin_main_Controller());
		mappings.put("/admin_main_addSchedule.do", new Admin_main_addSchedule_Controller());
		mappings.put("/admin_main_delSchedule.do", new Admin_main_delSchedule_Controller());
		mappings.put("/admin_main_pw_check.do", new Admin_main_Pw_Check_Controller());
		mappings.put("/admin_main_salary_show_info.do", new Admin_main_salary_show_info_Controller());
		mappings.put("/admin_main_show_info.do", new Admin_main_show_info_Controller());
		mappings.put("/admin_main_delete_employee.do", new Admin_main_delete_employee_Controller());
		
		mappings.put("/logout.do", new LogoutController());
		mappings.put("/main.do", new MainController());
		mappings.put("/scheduleShow.do", new ScheduleShowController());
		mappings.put("/search.do", new SearchController());
		mappings.put("/upload.do", new UploadController());

	}

	public Controller getController(String key) {
		return mappings.get(key);
	}
}
