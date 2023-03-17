package frontcontroller;

import java.util.HashMap;

import controller.*;

public class HandlerMapping {
	private HashMap<String, _Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, _Controller>();
		mappings.put("/admin_main_board.do", new Admin_main_board_Controller());
		mappings.put("/admin_main_calendar.do", new Admin_main_calendar_Controller());
		mappings.put("/admin_main_list.do", new Admin_main_list_Controller());
		mappings.put("/admin_main_salary_info.do", new Admin_main_salary_info_Controller());
		mappings.put("/admin_main_salary.do", new Admin_main_salary_Controller());
		mappings.put("/admin_main_schedule.do", new Admin_main_schedule_Controller());
		mappings.put("/admin_main.do", new Admin_main_Controller());
		
		mappings.put("/employee_main_board.do", new Employee_main_board_Controller());
		mappings.put("/employee_main_calendar.do", new Employee_main_calendar_Controller());
		mappings.put("/employee_main_list.do", new Employee_main_list_Controller());
		mappings.put("/employee_main_salary_info.do", new Employee_main_salary_info_Controller());
		mappings.put("/employee_main_salary.do", new Employee_main_salary_Controller());
		mappings.put("/employee_main_schedule.do", new Employee_main_schedule_Controller());
		mappings.put("/employee_main_update.do", new Employee_main_update_Controller());
		mappings.put("/employee_main.do", new Employee_main_Controller());
	}

	public _Controller getController(String key) { // key=>/memberList.do
		return mappings.get(key);
	}
}
