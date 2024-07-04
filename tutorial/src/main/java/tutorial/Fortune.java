package tutorial;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Fortune extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		int number = 1 + (int)(Math.random()*9); //1 ~ 9
		String[] colors = "빨강, 주황, 노랑, 초록, 파랑".split(",");
		
		String color = colors[(int)(Math.random()*colors.length)];
		
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>오늘의 운세</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<img src='https://fs.jtbc.co.kr/prog/media/goodluck/Img/site/Main/20191114_104138_7668(0).jpg' width='400' height='300'>");
		if(Math.random()>0.5) {
			out.print("<h2 style='color:green'>오늘은 기회와 도전이 가득한 날</h2>");	
		}else {
			out.print("<h2 style='color:hotpink'>오늘은 행복과 만남이 가득한 날</h2>");
		}
		out.println("<p>행운의 숫자는 [" + number+"] 이고, 행운의 색깔은 " + color+"색이니 참고하세요.</p>");
		out.println("<p>오늘 하루 기쁨의 순간들을 즐기세요</p>");
		out.println("<p>");
		out.println("<a href='./gugudan.h2'>구구단 공부하러 가기</a>");
		out.println("</p>");
		
		out.println("</body>");
		out.println("</html>");
		
		out.close();
		
	}
}
