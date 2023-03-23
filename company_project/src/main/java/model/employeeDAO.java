package model;

import java.util.List;

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
	
	public int getNum(String id) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   int loginNum = session.selectOne("mapper.employee.employeeNum", id);
		   session.close();
		   return loginNum;  
	}

	public String Login(Employee employee) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String loginId=session.selectOne("mapper.employee.employeeLogin", employee);
		   session.close();
		   return loginId;  
	}
	
	public String pw(int em_num) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   String employeePw = session.selectOne("mapper.employee.employeePw", em_num);
		   session.close();
		   return employeePw;  
	}
	
	public List<Employee> getList () {
		SqlSession session= MybatisConfig.getInstance().openSession(true);
		   List<Employee> list = session.selectList("mapper.employee.employeeList");
		   session.close();
		   return list;  
	}
	
	public Employee getInfo (int num) {
		SqlSession session= MybatisConfig.getInstance().openSession(true);
		   Employee info = session.selectOne("mapper.employee.employeeInfo", num);
		   session.close();
		   return info;
	}
	
	public Employee getVo (String name) {
		SqlSession session= MybatisConfig.getInstance().openSession(true);
		   Employee VO = session.selectOne("mapper.employee.employeeInfo", name);
		   session.close();
		   return VO;
	}

}


