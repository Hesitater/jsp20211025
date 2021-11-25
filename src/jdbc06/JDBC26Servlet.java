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

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC26Servlet
 */
@WebServlet("/jdbc06/s26")
public class JDBC26Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC26Servlet() {
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
		SupplierDAO dao = new SupplierDAO();
		boolean ok = false;

		// 2. request 분석, 가공
		Supplier supplier = new Supplier();

		supplier.setSupplierName("lim");
		supplier.setContactName("sujung");
		supplier.setAddress("kunkook");
		supplier.setCity("Seoul");
		supplier.setCountry("Korea");
		supplier.setPostalCode("");
		supplier.setPhone("010-1979-0711");
		supplier.setSupplierID(38);

		// 3. business logic( 주로 db작업)
		try (Connection con = ds.getConnection()) {
			ok = dao.update(con, supplier);

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 3.1 커넥션 얻기

		// 3.2 statement 얻기

		// 3.3 쿼리 실행 (resultSet 얻기)

		// 3.4 resultSet 처리

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
