package bitJeju.NoticeController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bitJeju.model.Dao;
import bitJeju.model.NoticeDto;

@WebServlet("/noticeWrite.jb")
public class NoticeWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setCharacterEncoding("euc-kr");
		HttpSession session =req.getSession(false);
		if((Integer)session.getAttribute("level") != null && (Integer)session.getAttribute("level") == 10){
			Integer isManeger = (Integer)session.getAttribute("level");
			req.getRequestDispatcher("noticeWrite.jsp").forward(req, resp);
		}else{
			System.out.println("작성권한이 없습니다.");
			PrintWriter out = resp.getWriter();
			out.println("<script type=\"text/javascript\" src=\"js/jquery-1.12.4.js\"></script>");
			out.println("<script type=\"text/javascript\" >");
			out.println("$(document).ready(function(){");
			out.println("alert(\"허용되지 않은 접근입니다.\");");
			out.println("history.back()");
			out.println("});");
			out.println("</script>");
			//resp.sendRedirect("noticeList.jb");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		NoticeDto noticeDto = new NoticeDto();
		noticeDto.setTitle(title);
		noticeDto.setContents(contents);
		Dao dao;
		try {
			dao = new Dao();
			dao.noticeWrite(noticeDto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("noticeList.jb");
	}
}
