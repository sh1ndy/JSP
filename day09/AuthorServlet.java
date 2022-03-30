package author;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import author.util.AuthorUtil;

@WebServlet("/authors")
public class AuthorServlet extends HttpServlet {
	private IAuthorService service;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		service = new AuthorServiceImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Author> list = service.getAll();
		
		req.setAttribute("list", list);
//		ObjectMapper mapper = new ObjectMapper();
//		
//		String json = mapper.writeValueAsString(list);
//		
//		resp.setCharacterEncoding("utf-8");
//		resp.setContentType("application/json; charset=utf-8");
//		PrintWriter out = resp.getWriter();
//		out.println(json);
//		out.flush();
		
		req.getRequestDispatcher("/authorView.jsp").forward(req, resp);
	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		if (id != null) {
			try {
				Integer idNum = Integer.valueOf(id);
				int result = service.delete(idNum);
				
				if (result == 1) {
					resp.setStatus(204);
				} else {
					resp.setStatus(404);
				}
			} catch (NumberFormatException e) {
				resp.setStatus(400);
			}
		} else {
			resp.setStatus(400);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		BufferedReader br = req.getReader();
		
		try {
			String body = AuthorUtil.getRequestBodt(br);
			Author author = AuthorUtil.jsonToAuthor(body);
			
			int result = service.add(author);
		} catch (Exception e) {
			resp.setStatus(400);
		}
	}
	
}
