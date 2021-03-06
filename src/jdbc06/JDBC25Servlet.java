package jdbc06;

import java.io.IOException;
import java.sql.Connection;

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
 * Servlet implementation class JDBC25Servlet
 */
@WebServlet("/jdbc06/s25")
public class JDBC25Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC25Servlet() {
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
		
		boolean ok = false;
		
		// 2. request 분석, 가공
		Customer customer = new Customer();
		
		customer.setCustomerName("Kim");
		customer.setContactName("taehee");
		customer.setCity("Seoul");
		customer.setCountry("Korea");
		customer.setAddress("gangnam");
		customer.setPostalCode("111111");
		customer.setCustomerID(104);
		
		// 3. business logic( 주로 db작업)
			
		
		
		try( Connection con = ds.getConnection()) {
			ok = dao.update(con, customer); 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 4. setattribute
		
		
		// 5. forward/ redirect

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
