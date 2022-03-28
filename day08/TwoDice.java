package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="TowDice", urlPatterns="/rollDice")
public class TwoDice extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
		
		int idx1 = (int) (Math.random() * 6) + 1;
		int idx2 = (int) (Math.random() * 6) + 1;
		
		PrintWriter out = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("</head>");
		out.println("<body>");
		out.println("<img src='resource/img/dice" + idx1 + ".jpg'>");
		out.println("<img src='resource/img/dice" + idx2 + ".jpg'>");
		out.println("</body>");
		out.println("</html>");
	}
	
}
