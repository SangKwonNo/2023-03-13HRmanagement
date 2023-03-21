package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class vacationDAO {
	private vacationDAO() {
	}

	static private vacationDAO dao = new vacationDAO();

	static public vacationDAO getInstance() {
		return dao;

	}

}
