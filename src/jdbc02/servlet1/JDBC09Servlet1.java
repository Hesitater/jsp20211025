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

import jdbc02.bean.Employees;

/**
 * Servlet implementation class JDBC0901Servlet
 */
@WebServlet("/jdbc02/s091")
public class JDBC09Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC09Servlet1() {
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
		List<Employees> list = new ArrayList<>();
		
		
		// 2. request 분석, 가공
		
		
		// 3. business logic( 주로 db작업)
		String sql = "SELECT LastName, FirstName FROM Employees";
			try (
				Connection con = ds.getConnection();	
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);	
					) {
				while( rs.next()) {
					Employees employee = new Employees();
					employee.setLastName(rs.getString(1));
					employee.setFirstName(rs.getString(2));
				
					list.add(employee);
				}
				
				System.out.println("rs결과 끝");
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			// 3.1 커넥션 얻기
			// 3.2 statement 얻기
			// 3.3 쿼리 실행 (resultSet 얻기)
			
			// 3.4 resultSet 처리
		
		// 4. setattribute
			request.setAttribute("list", list);
		
		// 5. forward/ redirect
			String path = "/WEB-INF/view/jdbc02/v09.jsp";
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
