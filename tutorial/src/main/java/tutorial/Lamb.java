package tutorial;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/lamb")
public class Lamb extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>양꼬치</title>");
		out.println("</head>");
		out.println("<body>");
		String query = req.getQueryString();
		System.out.println("query : " + query);
		req.getParameterMap();
		String n = req.getParameter("n");
		String k = req.getParameter("k");
		if(k == null || n == null) {
			out.println("<p>");
			out.println("n 값과 k 값이 반드시 전달되어야 합니다.");
			out.println("</p>");
			
		}else {
			int iN = Integer.parseInt(n);
			int iK = Integer.parseInt(k);
			
			int answer = iN * 12000 + iK * 2000 - (iN / 10 * 2000);
			String money = String.format("%,d", answer);
					
			out.println("<div style='text-align : center;'>");		
			out.println("<img src='https://png.pngtree.com/png-clipart/20220113/ourmid/pngtree-hand-painted-barbecue-mutton-kebab-steamed-bread-snack-elements-png-image_4290573.png' width='400' height='300'>");
			out.println("</div>");
			out.println("<p style='text-align: center;'>");
			out.println("10인분을 먹으면 음료수를 서비스로 하나로 주기 때문에 " + iN +"인분을 시켜서");
			out.println("</p>");
			out.println("<h2 style='text-align: center; color:green;'>");
			out.println("정답은 ￦" +money+ "원 입니다.");
			out.println("</h2>");
			
			out.println("<a href='https://school.programmers.co.kr/learn/courses/30/lessons/120830' 'text-align:center;'>직접 풀러가기</a>");
		}
		
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
	

}
