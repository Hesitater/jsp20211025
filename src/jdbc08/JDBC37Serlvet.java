package jdbc08;

import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;

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
 * Servlet implementation class JDBC37Serlvet
 */
@WebServlet("/jdbc08/s37")
public class JDBC37Serlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC37Serlvet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		// 5. forward/ redirect
			String path = "/WEB-INF/view/jdbc08/v37.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		MyTable11Dao dao = new MyTable11Dao();
		boolean ok = false;
		
		// 2. request 분석, 가공
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth");
		
		Bean11 bean = new Bean11();
		bean.setName(name);
		bean.setAge(Integer.parseInt(age));
		bean.setBirth(LocalDate.parse(birth));
		
		// 3. business logic( 주로 db작업)
		try ( Connection con = ds.getConnection()) {
			
			dao.insert(con, bean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. setattribute
		
		
		// 5. forward/ redirect

		String location = request.getContextPath() + "/jdbc08/s38";
		response.sendRedirect(location);
		
		
	}

}
