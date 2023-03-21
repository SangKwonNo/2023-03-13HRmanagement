package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.employee;

public class employeeDAO {
	private employeeDAO() {
	}

	static private employeeDAO dao = new employeeDAO();

	static public employeeDAO getInstance() {
		return dao;

	}
	
	public int pw(String id) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String employeePw = session.selectOne("mapper.employee.employeePw", em_num);
		   session.close();
		   return employeePw;  
	}

	public String Login(employee employee) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String employeeId=session.selectOne("mapper.employee.employeeLogin", employee);
		   session.close();
		   return employeeId;  
	}
	
	public String pw(int em_num) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String employeePw = session.selectOne("mapper.employee.employeePw", em_num);
		   session.close();
		   return employeePw;  
	}
	

}


