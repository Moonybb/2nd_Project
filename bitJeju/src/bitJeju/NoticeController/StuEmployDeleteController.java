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


/**
 * Servlet implementation class noticeDelete
 */
@WebServlet("/stuEmployDelete.jb")
public class StuEmployDeleteController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession(false);
        if((Integer)session.getAttribute("level") != null && (Integer)session.getAttribute("level") == 10){
        	String stuEmployNum = request.getParameter("stuEmployNum");
        	
        	Dao dao = null;
        	try {
        		dao = new Dao();
        		dao.stuEmployDelete(stuEmployNum);
        	} catch (SQLException e) {
        		// TODO Auto-generated catch block
        		e.printStackTrace();
        	}
        	request.getRequestDispatcher("/stuEmployList.jb").forward(request, response);
            
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
	}

}
