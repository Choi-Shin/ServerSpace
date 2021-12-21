package test1221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test1221/2/choiceDog")
public class ChoiceDogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String[] dogs = request.getParameterValues("dogs");
		out.println("<html>\n"
				+ "    <style>\n"
				+ "        body {\n"
				+ "            background-color: black;\n"
				+ "        }\n"
				+ "        img {\n"
				+ "            width: 100px;\n"
				+ "            height: 100px;\n"
				+ "        }\n"
				+ "    </style>\n"
				+ "<body>");
		for(int i=0; i<dogs.length; i++) {
			switch (dogs[i]) {
			case "푸들":
				out.println("<img src='images/푸들.jpeg'>");
				break;
			case "진돗개":
				out.println("<img src='images/진돗개.jpeg'>");
				break;
			case "풍산개":
				out.println("<img src='images/풍산개.jpeg'>");
				break;
			case "삽살개":
				out.println("<img src='images/삽살개.jpeg'>");
				break;
			default:
				break;
			}
		}
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
