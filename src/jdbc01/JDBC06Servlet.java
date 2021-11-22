package jdbc01;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/jdbc01/s06")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC06Servlet() {
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
		DataSource pool = (DataSource) application.getAttribute("dbpool"); // 연결들을 가지고 있는 객체
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String LastName = "";
		String FirstName = "";

		// 2. request 분석, 가공

		// 3. business logic( 주로 db작업)
		String sql = "SELECT LastName, FirstName FROM Employees WHERE EmployeeID = 1";

		try {
			// 3.1 커넥션 얻기
			con = pool.getConnection();
			// 3.2 statement 얻기
			stmt = con.createStatement();
			// 3.3 쿼리 실행 (resultSet 얻기)
			rs = stmt.executeQuery(sql);
			// 3.4 resultSet 처리

			if (rs.next()) {
				LastName = rs.getString(1);
				FirstName = rs.getString(2);
			}
			System.out.println("ResultSet 처리 종료!!");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		// 4. setattribute
		request.setAttribute("lastName", LastName);
		request.setAttribute("firstName", FirstName);

		// 5. forward/ redirect
		String path = "/WEB-INF/view/jdbc01/v06.jsp";
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
