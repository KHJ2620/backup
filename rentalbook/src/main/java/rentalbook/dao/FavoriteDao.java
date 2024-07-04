package rentalbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.datasource.impl.OracleDataSource;
import rentalbook.vo.Favorite;

public class FavoriteDao {
	
	public boolean save(Favorite favorite) throws SQLException {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()) {
		
		PreparedStatement stmt = conn.prepareStatement("INSERT INTO FAVORITES VALUES (FAVORITES_SEQ.NEXTVAL, ?, ?, ?)");
		stmt.setString(1, favorite.userId());
		stmt.setInt(2, favorite.bookId());
		stmt.setDate(3, favorite.createdAt());
		
		int r =  stmt.executeUpdate();
		return r == 1 ? true : false;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
	public boolean deleteByNo(int no) throws SQLException {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()) {
		
		PreparedStatement stmt = conn.prepareStatement("DELETE FROM FAVORITES WHERE NO=?");
		stmt.setInt(1, no);
		
		
		int r =  stmt.executeUpdate();
		return r == 1 ? true : false;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}
	
	public List<Favorite> findAllByUserId(String userId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM FAVORITES WHERE USER_ID=?");
			stmt.setString(1, userId);
			
			ResultSet rs = stmt.executeQuery();
			List<Favorite> favorites = new ArrayList<>();
			
			while(rs.next()) {
				Favorite one = new Favorite(rs.getInt(1), rs.getString(2),rs.getInt(3),rs.getDate(4));
				favorites.add(one);
			}
			return favorites;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
}