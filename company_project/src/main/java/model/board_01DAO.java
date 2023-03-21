package model;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;

public class board_01DAO {
	private board_01DAO() {
	}

	static private board_01DAO dao = new board_01DAO();

	static public board_01DAO getInstance() {
		return dao;

	}

}
