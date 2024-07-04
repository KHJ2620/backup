package controller.study;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.EmployeeDao;
import model.dao.JobDao;
import model.vo.Employee;

@WebServlet("/hr/employees")
public class EmployeeController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			List<Employee> employees = new ArrayList<>();
			EmployeeDao employeeDao = new EmployeeDao();
			JobDao jobDao = new JobDao();
			String jobId = request.getParameter("jobId");
			employees = employeeDao.findByJobId(jobId);
			request.setAttribute("employees", employees);
			request.setAttribute("job", jobDao.findByJobId(jobId));
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/view/study/employee.jsp").forward(request, response);
		
		
	}
}
