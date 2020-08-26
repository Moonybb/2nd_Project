package bitJeju.NoticeController;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bitJeju.model.Dao;
import bitJeju.model.JobNoticeDto;
import bitJeju.model.PagingDao;
import bitJeju.model.PagingDto;

@WebServlet("/jobNoticeList.jb")
public class JobNoticeListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		String action = req.getParameter("searchType");
		System.out.println("@@@@@@@action:"+action);
		String param = req.getParameter("pgNum");
		int count = 0;
		String linkStr = "";
		int pgNum = param == null ? 1 : Integer.parseInt(param);
		System.out.println("################");
		System.out.println(pgNum);
		Dao dao = null;
		PagingDao pagingDao =null;
		PagingDto pagingDto = null;
		ArrayList<JobNoticeDto> list = null;
		
		try {
			dao = new Dao();
			pagingDao = new PagingDao();
			String bbsTable = "jobNotice";
			int postCnt = pagingDao.getCount(bbsTable);
			System.out.println(postCnt + "postCnt");
			list = dao.jobNoticeSelectAll(postCnt , pgNum);
			if(action == null){
				System.out.println("공지사항 모든 게시글을 표시합니다.");
				req.setAttribute("jobNotice", list);
				count = pagingDao.getCount(bbsTable);
			}else if(action != null){
				System.out.println("엑션 타입이 널이 아닙니다 검색을 진행합니다.");
				String searchType = req.getParameter("searchType");
				String keyWord = req.getParameter("keyWord");
				Integer curPage = Integer.parseInt(req.getParameter("pgNum"));
				System.out.println(searchType + "$$$$" + keyWord);
				list = pagingDao.searchJobNotice(keyWord, searchType, curPage);
				System.out.println("공지사항 중 필터된 게시글을 표시합니다.");
				req.setAttribute("jobNoticeList", list);
				count = pagingDao.getCount(keyWord, searchType, bbsTable);
				linkStr = "&searchType="+searchType+"&keyWord="+keyWord;
			}
			
			pagingDao = new PagingDao();
			String bbsListLink = "jobNoticeList.jb";
			req.setAttribute("pagelist", new PagingDao().getPageLinkList(pgNum, linkStr, count, bbsListLink));
			req.setAttribute("jobNotice", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("jobNoticeList.jsp").forward(req, resp);
	}
}
