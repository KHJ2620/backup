package controller.board;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.dao.BoardDao;
import model.vo.Board;

@WebServlet("/board")
// 리스트
public class BoardController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int p = request.getParameter("p")==null ? 1 : Integer.parseInt(request.getParameter("p"));
			int size = 10;
			int start = size*(p-1) +1;
			int end = p*size;
			
			BoardDao boardDao = new BoardDao();
			int count = boardDao.countAll();
			int totalPages = count/size + (count%size > 0 ? 1: 0);
			
			request.setAttribute("boards", boardDao.findAll(start, end));
			request.setAttribute("totalPages",totalPages);
			request.setAttribute("currentPage", p);
			
			
			
			
			request.getRequestDispatcher("/WEB-INF/view/board/list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
