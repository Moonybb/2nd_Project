package bitJeju.IndexSignController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitJeju.model.ClassDto;
import bitJeju.model.Dao;

@WebServlet("/index.jb")
public class IndexController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			ArrayList<ClassDto> list = new ArrayList<ClassDto>();
			try {
				Dao dao = new Dao();
				list = dao.eduMenuSelect();
				req.setAttribute("eduMenu", list);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}
