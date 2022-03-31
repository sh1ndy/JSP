package file;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/upload")
@MultipartConfig(location="C:\\uploadtemp", fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 10)
public class UploadServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part = req.getPart("upload");
		
		System.out.println(part.getName());
		System.out.println(part.getSubmittedFileName());
		
		for (String header : part.getHeaderNames()) {
			System.out.println(header + " : " + part.getHeader(header));
		}
		
		String path = getServletContext().getRealPath("/") + "upload";
		String realPath = path + File.separator + part.getSubmittedFileName();
		System.out.println(realPath);
		part.write(realPath);
	}
	
}
