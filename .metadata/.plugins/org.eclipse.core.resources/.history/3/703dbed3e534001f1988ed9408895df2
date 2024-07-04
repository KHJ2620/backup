package controller.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.BoardDao;
import model.vo.Board;
import model.vo.User;

@WebServlet("/board/write-handle")
public class BoardWriteHandleController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			BoardDao boardDao = new BoardDao();

			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			User authUser = (User) request.getSession().getAttribute("authUser");
			String category = request.getParameter("category");
			String title = request.getParameter("title");
			String body = request.getParameter("body").replace("\n", "<br/>");
			int no = boardDao.generateKey();

			Board one = new Board(no, authUser.getId(), body, null, null, new Date(System.currentTimeMillis()), 0,
					category, title, 0);
			boolean r = boardDao.save(one);
			if (r) {
				response.sendRedirect(request.getContextPath() + "/board/list");
			} else {
				out.println("<script>");
				out.println("window.alert(\"의견을 남기는데 오류가 발생하였습니다.\")");
				out.println("history.go(-1);");
				out.println("</script>");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
