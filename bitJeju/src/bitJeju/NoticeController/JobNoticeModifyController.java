package bitJeju.NoticeController;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitJeju.model.Dao;
import bitJeju.model.JobNoticeDto;

@WebServlet("/jobNoticeModify.jb")
public class JobNoticeModifyController extends HttpServlet {

	String jobNoticeNum = null;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		jobNoticeNum = request.getParameter("jobNoticeNum");
		request.setAttribute("jobNoticeNum", jobNoticeNum);
		
		try {
			Dao dao =new Dao();
			JobNoticeDto jobNoticeDto = new JobNoticeDto();
			jobNoticeDto = dao.jobNoticeReadByNum(jobNoticeNum);
			request.setAttribute("bean", jobNoticeDto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/jobNoticeModify.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post funcionando");
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String company = request.getParameter("company");
		String temp = request.getParameter("endDay");
		Date endDay = Date.valueOf(temp);
		System.out.println(company+endDay);
		
		JobNoticeDto jobNoticeDto = new JobNoticeDto();
		jobNoticeDto.setJobNoticeNum(Integer.parseInt(jobNoticeNum));
		jobNoticeDto.setTitle(title);
		jobNoticeDto.setContents(contents);
		jobNoticeDto.setCompany(company);
		jobNoticeDto.setEndDay(endDay);
		Dao dao =null;
		try {
			dao = new Dao();
			dao.jobNoticeModify(jobNoticeDto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("jobNoticeRead.jb?jobNoticeNum="+jobNoticeNum);
	}
}
