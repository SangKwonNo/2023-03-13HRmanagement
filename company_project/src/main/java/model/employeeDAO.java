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

	public int loginTest(Employee employee) {
		System.out.println("employee = " + employee);
		System.out.println("employee = " + employee);
		System.out.println("employee = " + employee);
		System.out.println("employee = " + employee);

		SqlSession session = MybatisConfig.getInstance().openSession(true);

		Integer count = session.selectOne("mapper.employee.employeeLoginTest", employee);
		System.out.println("count=" + count);

		session.close();
		if (count == null) {
			return 0;
		}
		return count;
	}

	public int getNum(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Integer loginNum = session.selectOne("mapper.employee.employeeNum", id);
		session.close();
		if (loginNum == null) {
			return 0;
		}
		return loginNum;
	}

	public String pw(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		String employeePw = session.selectOne("mapper.employee.employeePw", id);
		session.close();
		return employeePw;
	}

	public List<Employee> getList() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Employee> list = session.selectList("mapper.employee.employeeList");
		session.close();
		return list;
	}

	public Employee getVo(String id) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Employee VO = session.selectOne("mapper.employee.employeeInfo", id);
		session.close();
		return VO;
	}

	public void infoUpdate(Employee e) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.update("mapper.employee.employeeUpdate", e);
		session.close();
	}

	public void deleteEmployee(int num) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.delete("mapper.employee.employeeDelete", num);
		session.close();
	}
}
