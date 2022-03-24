package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 사용자가 Method GET 방식으로 요청했을 때 service
		// 단순이 페이지만 이동시킬때 사용
		// response.sendRedirect("/09-servlet/nameForm.jsp");
		
		// 페이지 이동할때 request값을 호출페이지로 전달
		req.getRequestDispatcher("/nameForm.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		// 사용자가 Method POST 방식으로 요청했을 때 service
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		
		System.out.println(firstName);
		System.out.println(lastName);
	}
}
