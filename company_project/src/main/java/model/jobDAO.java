package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class jobDAO {
	private jobDAO() {
	}

	static private jobDAO dao = new jobDAO();

	static public jobDAO getInstance() {
		return dao;

	}

}
