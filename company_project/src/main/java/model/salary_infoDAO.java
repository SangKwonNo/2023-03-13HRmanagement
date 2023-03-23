package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.apache.ibatis.session.SqlSession;
import hrmanagement.MybatisConfig;
import hrmanagement.vo.Companyrank;
import hrmanagement.vo.Employee;
import hrmanagement.vo.Salary_info;

public class salary_infoDAO {
	private salary_infoDAO() {
	}

	static private salary_infoDAO dao = new salary_infoDAO();

	static public salary_infoDAO getInstance() {
		return dao;

	}

	public Companyrank getCompanyRankInfo(String rn_name) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		Companyrank c = session.selectOne("mapper.companyrank.getRank", rn_name);
		session.close();
		return c;
	}

//	public int subtractMonth(int number) {
//		LocalDate currentDate = LocalDate.now();
//		LocalDate resultDate = currentDate.minusMonths(number);
//		String year = resultDate.format(DateTimeFormatter.ofPattern("yyyy"));
//		String month = resultDate.format(DateTimeFormatter.ofPattern("MM"));
//		return (Integer.parseInt(month) - number);
//	}
	
	public int subtractMonth(int number) {
		LocalDate currentDate = LocalDate.now();
		System.out.println("currentDate : " + currentDate);
		LocalDate resultDate = currentDate.minusMonths(number);
		System.out.println("resultDate : " + resultDate);
		String month = resultDate.format(DateTimeFormatter.ofPattern("MM"));
		System.out.println("month : " + month);
		return Integer.parseInt(month);
	}

}
