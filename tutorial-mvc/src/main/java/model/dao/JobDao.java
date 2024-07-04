package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.vo.Job;
import oracle.jdbc.datasource.impl.OracleDataSource;

public class JobDao {
	public List<Job> findAll() throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("hr");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM JOBS");
			
			
			ResultSet rs = stmt.executeQuery();
			List<Job> jobs = new ArrayList<>();
			
			while(rs.next()) {
				Job one = new Job(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4) );
				jobs.add(one);
			}
			return jobs;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	public Job findByJobId(String jobId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("hr");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM JOBS WHERE JOB_ID=?");
			stmt.setString(1, jobId);
			
			ResultSet rs = stmt.executeQuery();
			
			
			if(rs.next()) {
				return new Job(rs.getString(1), rs.getString(2),rs.getInt(3),rs.getInt(4) );
				
			} else {
				return null;
			}
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
}


