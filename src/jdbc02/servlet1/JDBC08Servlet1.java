package jdbc02.servlet1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
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

/**
 * Servlet implementation class JDBC08Servlet1
 */
@WebServlet("/jdbc02/s081")
public class JDBC08Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC08Servlet1() {
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
		List<Customer> list = new ArrayList<>();
		
		// 2. request 분석, 가공
		
		
		// 3. business logic( 주로 db작업)
		String sql = "SELECT CustomerId, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ";
			try (  Connection con = ds.getConnection();
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					) {
				while (rs.next()) {
					Customer bean = new Customer();
					
					int i = 1;
					bean.setCustomerId(rs.getInt(i++));
					bean.setCustomerName(rs.getString(i++));
					bean.setContactName(rs.getString(i++));
					bean.setAddress(rs.getString(i++));
					bean.setCity(rs.getString(i++));
					bean.setPostalCode(rs.getString(i++));
					bean.setCountry(rs.getString(i++));
					
					list.add(bean);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			// 3.1 커넥션 얻기
			
			// 3.2 statement 얻기
			
			// 3.3 쿼리 실행 (resultSet 얻기)
			
			// 3.4 resultSet 처리
		
		// 4. setattribute
			request.setAttribute("customers", list);
		
		// 5. forward/ redirect
		String path = "/WEB-INF/view/jdbc02/v0801.jsp";
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
