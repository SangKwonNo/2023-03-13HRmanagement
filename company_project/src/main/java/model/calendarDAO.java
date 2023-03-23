package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Calendar;
import hrmanagement.vo.Employee;

public class calendarDAO {
	private calendarDAO() {
	}

	static private calendarDAO dao = new calendarDAO();

	static public calendarDAO getInstance() {
		return dao;

	}

	public void saveSchedule(Calendar calendar) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.insert("mapper.calendar.saveSchedule", calendar);
		System.out.println(calendar);
		session.close();
	}

	public void deleteSchedule(int num) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.delete("mapper.calendar.deleteSchedule", num);
		session.close();
	}

	public List<Calendar> getSchedule() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Calendar> calendarInfo = session.selectList("mapper.calendar.getSchedule");
		session.close();
		return calendarInfo;
	}

}
