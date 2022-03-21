package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SelectTest {
	// result set 타입 쿼리 결과를 모두 출력하기 : rs. next()반복 조건으로 이용
	public static void main(String[] args) {
		Connection conn = OracleConnectUtil.connect();
		String sql = "select*from tbl_custom#";
		PreparedStatement pstmt = null;

		// select 쿼리는 결과를 저장해야합니다.
		ResultSet rs = null; // 반환 결과 테이블의 데이터를 참조합니다 반환결과는 행단위로 접근합니다.
		// insert, update, delete는 쿼리 실행한 반환 결과 데이터가 없습니다.

		try {
			pstmt = conn.prepareStatement(sql);
			// pstmt.execute(); //insert update, delete
			rs = pstmt.executeQuery(); // select
			System.out.println("데이터가 있습니까? " + rs.next());
			int i = 1;
			while (rs.next()) {

				System.out.print(i++ + "행");
				System.out.print(String.format("%-20s", rs.getString("Custom_ID")));
				System.out.print(String.format("%-20s", rs.getString("name")));
				System.out.print(String.format("%-20s", rs.getString("email")));
				System.out.print(String.format("%5d  ", rs.getInt("age")));
				System.out.println(rs.getTimestamp("reg_date"));
			}
			pstmt.close();

		} catch (SQLException e) {
			System.out.println("SQL 실행 오류 : " + e.getMessage());
		}

	}
}
