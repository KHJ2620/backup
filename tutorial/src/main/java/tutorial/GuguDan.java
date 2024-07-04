package tutorial;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 * 구구단 랜덤 단을 HTML 로 응답을 보내주는 서블릿을 만든다음
 *  /gugudan.h2에 매핑
 */
@WebServlet("/gugudan.h2")
public class GuguDan extends HttpServlet {
	
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>오늘의 구구단</title>");
		out.println("</head>");
		out.println("<body>");
		int r = 2 + (int)(Math.random()*8);
		out.print("<h2 style='color:green'>오늘의 구구단은 "+r+"단입니다.</h2>");
		for(int i=1; i<=9; i++) {
			out.println("<p>"+ r + " X " + i +" = " + r*i+"</p>" );
		}
		out.println("<p>열공하세요!</p>");
		out.println("<p>");
		out.println("<a href='./fortune.hj'>운세확인하러 가기</a>");
		out.println("</p>");
		
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	
	
		
	}

}
