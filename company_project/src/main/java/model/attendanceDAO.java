package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class attendanceDAO {
	private attendanceDAO() {
	}

	static private attendanceDAO dao = new attendanceDAO();

	static public attendanceDAO getInstance() {
		return dao;

	}

}
