package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC17Servlet
 */
@WebServlet("/jdbc03/s17")
public class JDBC17Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC17Servlet() {
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
		List<Supplier> list = new ArrayList<>();
		List<String> countryList = new ArrayList<>();
		
		
		// 2. request 분석, 가공
		String country = request.getParameter("country");
		
		// 3. business logic( 주로 db작업)
		
		// 3.1 - 공급자 국가 조회
		
		String sql2 = "SELECT DISTINCT country FROM Suppliers ORDER BY Country";
		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql2);
				) {
			while (rs.next()) {
				
				countryList.add(rs.getString(1));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// 3.2 - 공급자들 조회
		String sql ="SELECT SupplierId, SupplierName, ContactName, Address, City, PostalCode, Country, Phone "
				+ " FROM Suppliers WHERE Country = ?";
		
			try (Connection con = ds.getConnection();
					PreparedStatement stmt = con.prepareStatement(sql);
					) {
				//stmt.setString(1, country);
				stmt.setString(1, country);
				
			try(ResultSet rs = stmt.executeQuery()) {
				
				while (rs.next()) {
					Supplier supplier = new Supplier();
					int i = 1;
					supplier.setSupplierID(rs.getInt(i++));
					supplier.setSupplierName(rs.getString(i++));
					supplier.setContactName(rs.getString(i++));
					supplier.setAddress(rs.getString(i++));
					supplier.setCity(rs.getString(i++));
					supplier.setPostalCode(rs.getString(i++));
					supplier.setCountry(rs.getString(i++));
					supplier.setPhone(rs.getString(i++));
					
					list.add(supplier);
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
			request.setAttribute("countryList", countryList);
			request.setAttribute("suppliers", list);
		
		
		// 5. forward/ redirect
		String path = "/WEB-INF/view/jdbc03/v17.jsp";
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
