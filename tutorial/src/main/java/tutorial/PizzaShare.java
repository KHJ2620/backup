package tutorial;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/pizza")
public class PizzaShare extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>피자 나눠먹기</title>");
		out.println("</head>");
		out.println("<body>");
		String query = req.getQueryString();   // ? 뒷부분의 전체 문자열 추출
		System.out.println("query : " + query);  // 없으면 null 이 뜸
		// 특정 이름으로 넘어온 벨류를 확인하려면..? split를 직접할 필요는 없다.
		// WAS가 queryString 을 분석해서 Map 형태로 처리를 해두기 때문에 
		req.getParameterMap();
		String slice = req.getParameter("slice"); //이름(키)만 주고 해당하는 이름의 값을 얻어낼 수 있다.
		                                          //전부 String 으로 저장을 하고 있다.
		System.out.println("slice : " + slice);
		String n = req.getParameter("n");
		if(slice == null || n == null) {
			out.println("<p>");
			out.println("slice 값과 n 값이 반드시 전달되어야 합니다.");
			out.println("</p>");
			
		}else {
			int iSlice = Integer.parseInt(slice);
			int iN = Integer.parseInt(n);
			
			int answer = iN % iSlice >0 ? iN/iSlice+1 : iN/iSlice;
			out.println("<img src='https://img.freepik.com/premium-vector/pizza-illustration_14656-92.jpg' width='400' height='300'>");
			out.println("<p>");
			out.println(iN+"명이 "+ iSlice+"조각으로 자른 피자를 한 조각 이상씩 먹으려면");
			out.println("</p>");
			out.println("<h2 style='color:green'>");
			out.println("정답은 " +answer+ "입니다.");
			out.println("</h2>");
			
			out.println("<a href='https://school.programmers.co.kr/learn/courses/30/lessons/120816'>직접 풀러가기</a>");
		}
		
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
}
