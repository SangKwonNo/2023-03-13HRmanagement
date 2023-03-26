package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import hrmanagement.MybatisConfig;
import hrmanagement.vo.Attendance;

public class attendanceDAO {
	private attendanceDAO() {
	}

	static private attendanceDAO dao = new attendanceDAO();

	static public attendanceDAO getInstance() {
		return dao;

	}
	
	public List<Attendance> isDate(Attendance a) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Attendance> check_in = session.selectList("mapper.attendance.isDate", a);
		session.close();
		return check_in;
	}
	
	public int insertWork(Attendance a) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Integer cnt = session.insert("mapper.attendance.insertWork", a);
		if (cnt == null) {
			cnt = 0;
		}
		session.close();
		return cnt;
	}
	
	public List<Attendance> getList (int em_num) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Attendance> list = session.selectList("mapper.attendance.getList", em_num);
		session.close();
		return list;
		
	}
}
