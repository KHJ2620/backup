package controller.study;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.JobDao;
import model.vo.Job;

@WebServlet("/study/job")
public class JobController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		try {
			
			List<Job> jobs = new ArrayList<>();
			JobDao jobdao = new JobDao();
			jobs = jobdao.findAll();
			request.setAttribute("jobs", jobs);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher("/WEB-INF/view/study/job.jsp").forward(request, response);
		
	}
}
