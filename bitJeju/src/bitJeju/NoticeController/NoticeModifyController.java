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


@WebServlet("/noticeModify.jb")
public class NoticeModifyController extends HttpServlet {
 
	String noticeNum = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =request.getSession(false);
		if((Integer)session.getAttribute("level") != null && (Integer)session.getAttribute("level") == 10){
			noticeNum = request.getParameter("noticeNum");
			request.setAttribute("noticeNum", noticeNum);
			try {
				Dao dao =new Dao();
				NoticeDto noticeDto = new NoticeDto();
				noticeDto = dao.noticeReadByNum(noticeNum);
				request.setAttribute("notice", noticeDto);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/noticeModify.jsp").forward(request, response);
		}else{
			response.setCharacterEncoding("euc-kr");
			System.out.println("작성권한이 없습니다.");
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\" src=\"js/jquery-1.12.4.js\"></script>");
			out.println("<script type=\"text/javascript\" >");
			out.println("$(document).ready(function(){");
			out.println("alert(\"허용되지 않은 접근입니다.\");");
			out.println("history.back()");
			out.println("});");
			out.println("</script>");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post funcionando");
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		
		NoticeDto noticeDto = new NoticeDto();
		noticeDto.setNoticeNum(Integer.parseInt(noticeNum));
		noticeDto.setTitle(title);
		noticeDto.setContents(contents);
		
		Dao dao =null;
		try {
			dao = new Dao();
			dao.noticeModify(noticeDto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("noticeRead.jb?noticeNum="+noticeNum);
				//request.getRequestDispatcher("/noticeRead.jb?"+"noticeNum="+noticeNum).forward(request, response);
	}

}
