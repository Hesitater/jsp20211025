package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
import jdbc02.bean.Employee;

/**
 * Servlet implementation class JDBC13Servlet
 */
@WebServlet("/jdbc03/s13")
public class JDBC13Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC13Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Employee> list = new ArrayList<>();

		Customer cus = new Customer();
		// 2. request 분석, 가공
		String id = request.getParameter("customerID");

		// 3. business logic( 주로 db작업)
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ " FROM Customers WHERE CustomerID= ?";

		try (Connection con = ds.getConnection(); 
				PreparedStatement stmt = con.prepareStatement(sql);) {
			stmt.setInt(1, Integer.parseInt(id)); // 파라미터1 : ? 위치, 파라미터2 : 값

			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					int i = 1;

					cus.setCustomerID(rs.getInt(i++));
					cus.setCustomerName(rs.getString(i++));
					cus.setContactName(rs.getString(i++));
					cus.setAddress(rs.getString(i++));
					cus.setCity(rs.getString(i++));
					cus.setPostalCode(rs.getString(i++));
					cus.setCountry(rs.getString(i++));

				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		// 3.1 커넥션 얻기

		// 3.2 statement 얻기

		// 3.3 쿼리 실행 (resultSet 얻기)

		// 3.4 resultSet 처리

		// 4. setattribute
		request.setAttribute("customer", cus);

		// 5. forward/ redirect
		String path = "/WEB-INF/view/jdbc03/v12.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
