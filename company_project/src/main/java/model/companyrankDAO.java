package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class companyrankDAO {
	private companyrankDAO() {
	}

	static private companyrankDAO dao = new companyrankDAO();

	static public companyrankDAO getInstance() {
		return dao;

	}

}
