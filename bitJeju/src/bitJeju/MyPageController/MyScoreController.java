package bitJeju.MyPageController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bitJeju.model.Dao;
import bitJeju.model.StudentDto;
import bitJeju.model.StudyGroupDto;

@WebServlet("/myScore.jb")
public class MyScoreController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			HttpSession session = req.getSession(false);
			StudentDto bean = (StudentDto) session.getAttribute("sbean");
			int hakbun = bean.getHakbun();
			
			Dao dao = new Dao();
			ArrayList<StudyGroupDto> score = dao.myPageScore(hakbun);
			req.setAttribute("score", score);

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		req.getRequestDispatcher("myScore.jsp").forward(req, resp);
	}
	
}
