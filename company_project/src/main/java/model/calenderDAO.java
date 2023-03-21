package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class calenderDAO {
	private calenderDAO() {
	}

	static private calenderDAO dao = new calenderDAO();

	static public calenderDAO getInstance() {
		return dao;

	}

}
