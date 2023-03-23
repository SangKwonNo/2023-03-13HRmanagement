package total_controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin_controller.Controller;
import hrmanagement.vo.Employee;
import model.employeeDAO;

public class SearchController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String name = request.getParameter("searchInfo");
			Employee vo = employeeDAO.getInstance().getVo(name);
			request.setAttribute("searchVO", vo);
			
		return null;
	}

}
