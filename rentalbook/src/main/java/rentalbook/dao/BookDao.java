package rentalbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.datasource.impl.OracleDataSource;
import rentalbook.vo.Book;



public class BookDao {
	// SELECT * FROM BOOKS ORDER BY TITLE ASC
	public List<Book> findAllOrderByTitle() throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM BOOKS ORDER BY TITLE ASC");
			
			
			ResultSet rs = stmt.executeQuery();
			List<Book> books = new ArrayList<>();
			
			while(rs.next()) {
				Book one = new Book(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6), rs.getInt(7),rs.getString(8),rs.getInt(9) );
				books.add(one);
			}
			return books;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
		
	public List<Book> findAllOrderByRentalCnt() throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM BOOKS ORDER BY RENTAL_CNT DESC");
			
			
			ResultSet rs = stmt.executeQuery();
			List<Book> books = new ArrayList<>();
			
			while(rs.next()) {
				Book one = new Book(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6), rs.getInt(7),rs.getString(8),rs.getInt(9) );
				books.add(one);
			}
			return books;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}	
		
	public List<Book> findAllOrderByBookId() throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM BOOKS ORDER BY BOOK_ID DESC");
			
			
			ResultSet rs = stmt.executeQuery();
			List<Book> books = new ArrayList<>();
			
			while(rs.next()) {
				Book one = new Book(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6), rs.getInt(7),rs.getString(8),rs.getInt(9) );
				books.add(one);
			}
			return books;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}		
		
	public Book findByBookId(int bookId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("select * from BOOKS where BOOK_ID=?");
			stmt.setInt(1, bookId);
			
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next()) {
				return new Book(rs.getInt(1), rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6), rs.getInt(7),rs.getString(8),rs.getInt(9));
			} else {
				return null;
			}
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	public boolean increaseRentalCntByNo(int bookId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()) {
			// 식별키로 조회하고,
			PreparedStatement stmt = conn
					.prepareStatement("UPDATE BOOKS SET RENTAL_CNT = RENTAL_CNT + 1 WHERE BOOK_ID=?");
			stmt.setInt(1, bookId);

			int  r = stmt.executeUpdate();

			return r == 1 ? true : false;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}

	}
	
	
	public boolean decreaseRentalCntByNo(int bookId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("rentalbook");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()) {
			// 식별키로 조회하고,
			PreparedStatement stmt = conn
					.prepareStatement("UPDATE BOOKS SET RENTAL_CNT = RENTAL_CNT - 1 WHERE BOOK_ID=?");
			stmt.setInt(1, bookId);

			int  r = stmt.executeUpdate();

			return r == 1 ? true : false;
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}

	}
}