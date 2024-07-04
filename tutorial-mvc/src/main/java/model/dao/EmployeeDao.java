package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.vo.Employee;
import oracle.jdbc.datasource.impl.OracleDataSource;

public class EmployeeDao {
	
	public List<Employee> findByJobId(String jobId) throws Exception {
		OracleDataSource ods = new OracleDataSource();
		ods.setURL("jdbc:oracle:thin:@//3.34.136.108:1521/xe");
		ods.setUser("hr");
		ods.setPassword("oracle");
		
		try (Connection conn = ods.getConnection()){
			
			//식별키로 조회하고,
			PreparedStatement stmt = conn.prepareStatement("SELECT * FROM EMPLOYEES WHERE JOB_ID=?");
			stmt.setString(1, jobId);
			
			ResultSet rs = stmt.executeQuery();
			List<Employee> employees = new ArrayList<>();
			
			while(rs.next()) {
				Employee one = new Employee(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6) );
				employees.add(one);
				
			}
			return employees;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

}