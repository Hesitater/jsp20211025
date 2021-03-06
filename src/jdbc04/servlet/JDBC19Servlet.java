package jdbc04.servlet;

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

import jdbc02.bean.Customer;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class JDBC19Servlet
 */
@WebServlet("/jdbc04/s19")
public class JDBC19Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC19Servlet() {
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
		CustomerDAO dao = new CustomerDAO();
		List<Customer> customerList = new ArrayList<>();
		List<String> countryList = new ArrayList<>();
		
		
		try ( Connection con = ds.getConnection();) {
				// 2. request 분석, 가공
				String country = request.getParameter("country");
			
		
		// 3. business logic( 주로 db작업)
			// 3.1 country 국가 리스트 조회
			countryList = dao.getCountryList(con);
			
			// 3.2 customer들 조회
			customerList = dao.getCustomerListByCountry(con, country);

		} catch (Exception e) {
			e.printStackTrace();
		}
		
			
		
		// 4. setattribute
			request.setAttribute("customerList", customerList);
			request.setAttribute("countryList", countryList);
			
			
		// 5. forward/ redirect
		String path = "/WEB-INF/view/jdbc03/v18.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		// 99. 마무리
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
