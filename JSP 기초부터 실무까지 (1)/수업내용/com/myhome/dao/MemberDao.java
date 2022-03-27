package com.myhome.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.myhome.dto.MemberDto;

public class MemberDao {
	private String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String db_username = "myJsp";
	private String db_password = "jsppassword";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	
	public boolean insert(MemberDto dto) {
		boolean result = false;
		sql = "INSERT INTO member VALUES(member_seq.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(db_url, db_username, db_password);
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId() );
			ps.setString(2, dto.getPassword() );
			ps.setString(3, dto.getEmail());
			ps.setString(4, dto.getNickname() );
			result = ps.executeUpdate() == 1;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps!=null) ps.close();
				if(con!=null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
