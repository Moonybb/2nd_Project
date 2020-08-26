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

@WebServlet("/myPageDetail.jb")
public class MyPageDetailController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		StudentDto naming=(StudentDto)session.getAttribute("sbean");
		try {
			Dao dao = new Dao();
			
			ArrayList<StudentDto> jeongbo=dao.myPageScore(naming.getHakbun());
			req.setAttribute("jeongbo", jeongbo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("myPageDetail.jsp").forward(req, resp);
	}

}
