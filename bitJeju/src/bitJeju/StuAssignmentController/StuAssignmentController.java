package bitJeju.StuAssignmentController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitJeju.model.Dao;
import bitJeju.model.StuAssignmentDto;

@WebServlet("/stuAssignment.jb")
public class StuAssignmentController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		try {
			Dao dao = new Dao();
			ArrayList<StuAssignmentDto> list = dao.stuAssignmentSelect();
			request.setAttribute("list", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("stuAssignment.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("EUC-kr");
		int hakbun = Integer.parseInt(request.getParameter("hakbun").trim());
		String name = request.getParameter("name").trim();
		int classCode = Integer.parseInt(request.getParameter("classCode").trim());
		String className = request.getParameter("className").trim();
		String tcode = request.getParameter("tcode");
		try {
			Dao dao = new Dao();
			dao.studyGroupInsert(hakbun, name, tcode, classCode, className); // studyGroup table insert
			dao = new Dao();
			dao.stuAssignmentChangeTemp(hakbun); // temp change
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\" src=\"js/jquery-1.12.4.js\"></script>");
			out.println("<script type=\"text/javascript\" >");
			out.println("$(document).ready(function(){");
			out.println("alert(\"수강신청 승인이 완료되었습니다.\");");
			out.println("location.href='stuAssignment.jb'});");
			out.println("</script>");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}