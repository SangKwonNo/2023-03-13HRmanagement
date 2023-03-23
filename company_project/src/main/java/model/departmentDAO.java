package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Department;

public class departmentDAO {
	private departmentDAO() {
	}

	static private departmentDAO dao = new departmentDAO();

	static public departmentDAO getInstance() {
		return dao;

	}

}
