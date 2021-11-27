package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc08.bean.Bean11;
import jdbc08.dao.MyTable11Dao;

/**
 * Servlet implementation class JDBC38ServletEx
 */
@WebServlet("/JDBC38ServletEx")
public class JDBC38ServletEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC38ServletEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		MyTable11Dao dao = new MyTable11Dao();
		List<Bean11> list = null;
		
		// 3 일
		try (Connection con = ds.getConnection()) {
			list = dao.getList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 04 add setAttribute
		request.setAttribute("list", list);
		// 05 forward /redirect
		String path = "/WEB-INF/view/jdbc08/v38Ex.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
