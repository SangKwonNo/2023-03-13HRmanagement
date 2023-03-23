package model;

import java.util.ArrayList;
import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Employee;

public class calenderDAO {
	private calenderDAO() {
	}

	static private calenderDAO dao = new calenderDAO();

	static public calenderDAO getInstance() {
		return dao;

	}

	public void saveSchedule(Calendar calendar) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.selectOne("mapper.calendar.saveSchedule", calendar);
		session.close();
	}

	public void deleteSchedule(int num) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.selectOne("mapper.calendar.deleteSchedule", num);
		session.close();
	}

	public ArrayList<Calendar> getSchedule() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		ArrayList<Calendar> calendarInfo = session.selectOne("mapper.calendar.getSchedule");
		session.close();
		return calendarInfo;
	}

}
