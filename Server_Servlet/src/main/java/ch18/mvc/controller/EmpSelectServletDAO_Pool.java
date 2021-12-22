package ch18.mvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch18.mvc.dao.EmpDAO;
import ch18.mvc.dao.EmpDAO_Pool;
import ch18.mvc.vo.EmpDTO;

@WebServlet("/ch18/emppool")
public class EmpSelectServletDAO_Pool extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		EmpDAO_Pool daoPool = new EmpDAO_Pool();
		ArrayList<EmpDTO> dto = daoPool.select();
		
		for (int i = 0; i < dto.size(); i++) {
			out.print(dto.get(i).toString()+"<hr>");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
