package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Supplier;
import jdbc04.dao.exampleDAO;






/**
 * Servlet implementation class JDBC00Servlet
 */
@WebServlet("/JDBC00Servlet")
public class JDBC00Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC00Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		exampleDAO dao = new exampleDAO();
		
		List<String> countryList = new ArrayList<>();
		List<Supplier> list = new ArrayList<>();
		
		
		
		// 2. request 분석, 가공
		String country = request.getParameter("country");
		
		
		// 3. business logic( 주로 db작업)

			try (Connection con = ds.getConnection();) {
					
					countryList = dao.getCountryList(con);
					
					list = dao.getSupplierList(con, country);
					
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
				
			// 3.1 커넥션 얻기
			// 3.2 statement 얻기
			// 3.3 쿼리 실행 (resultSet 얻기)
			// 3.4 resultSet 처리
		
		// 4. setattribute
			request.setAttribute("countryList", countryList);
			request.setAttribute("suppliers", list);
		
			
		// 5. forward/ redirect
			String path = "/WEB-INF/view/jdbc03/v20.jsp";
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
