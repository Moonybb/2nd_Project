package bitJeju.SubController;

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

@WebServlet("/subList.jb")
public class SubListController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ArrayList<ClassDto> list = new ArrayList<ClassDto>();
		try {
			Dao dao = new Dao();
			list = dao.subListSelect();
			request.setAttribute("classList", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/subList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}