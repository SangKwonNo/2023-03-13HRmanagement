package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class salary_infoDAO {
	private salary_infoDAO() {
	}

	static private salary_infoDAO dao = new salary_infoDAO();

	static public salary_infoDAO getInstance() {
		return dao;

	}

}
