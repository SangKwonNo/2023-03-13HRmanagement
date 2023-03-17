package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;

import com.mysql.cj.x.protobuf.MysqlxDatatypes.Array;

public class DAO {
	private DAO() {
	}

	static private DAO dao = new DAO();

	static public DAO getInstance() {
		return dao;

	}

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	int seq_count = 0;

	public void getConnection() {
		String URL = "jdbc:mysql://localhost:3306/rentcardb?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
		String user = "root";
		String password = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(URL, user, password);
//			System.out.println("      rentcardb_carreserve : " + conn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
