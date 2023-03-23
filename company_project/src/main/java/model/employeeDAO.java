package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Employee;

public class employeeDAO {
	private employeeDAO() {
	}

	static private employeeDAO dao = new employeeDAO();

	static public employeeDAO getInstance() {
		return dao;

	}

	public String Login(Employee employee) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String employeeId=session.selectOne("mapper.employee.employeeLogin", employee);
		   session.close();
		   return employeeId;  
	}
	

}


