package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();
		LocalDateTime now = LocalDateTime.now();
		
		// 페이지간의 소통
		req.setAttribute("now", now);
		
		// 페이지 이동
		req.getRequestDispatcher("/viewTime.jsp").forward(req, resp);
	}
	
}
