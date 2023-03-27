package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Board_01;
import hrmanagement.vo.Employee;

public class board_01DAO {
	private board_01DAO() {
	}

	static private board_01DAO dao = new board_01DAO();

	static public board_01DAO getInstance() {
		return dao;
	}

	public List<Board_01> getList() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Board_01> list = session.selectList("mapper.board_01.getAllBoard");
		session.close();
		return list;
	}

	public void BoardUpdate(int num, String subject, String contents) {
		String regDate = LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy.MM.dd"));

		Board_01 b = new Board_01();
		b.setContents(contents);
		b.setSubject(subject);
		b.setNum(num);
		b.setRegDate(regDate);

		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.update("mapper.board_01.BoardUpdate", b);
		session.close();
	}
}
