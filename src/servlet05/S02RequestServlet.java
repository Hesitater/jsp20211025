package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02RequestServlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 2. request분석, request parameter 분석/처리/가공
			String country = request.getParameter("country");
			country = country == null? "" : country;
			
		// 3. business logic
			List<String> list = new ArrayList<>();

			if (country.equals("korea")) {
				//한국관련일..
				list.add("Tongyeong" );
				list.add("jeju");
			} else if( country.equals("usa")) {
				//미국관련일..
				list.add("Chicago");
				list.add("newyork");
			}
			
		// 4. 결과 데이털르 request or session attribute 담기
			request.setAttribute("cities", list );
			request.setAttribute("country", country);
		
		// 5. forward or redirect
		String path ="/WEB-INF/view/servlet05/s02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
