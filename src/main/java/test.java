
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet({ "/test", "/Detail", "/addProduct", "/indexAdmin", "/infoUser" })
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public test() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getRequestURL().toString();

		request.setCharacterEncoding("utf-8");

		// User layout
		if (url.contains("Detail")) {
			request.setAttribute("contentPage", "component/Detail.jsp");
		} else {
			request.setAttribute("contentPage", "component/Body.jsp");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
		// Admin layout
//		if (url.contains("addProduct")) {
//			request.setAttribute("contentPageAdmin", "AdminComponent/addProduct.jsp");
//		} else if (url.contains("infoUser")) {
//			request.setAttribute("contentPageAdmin", "AdminComponent/InformationUser.jsp");
//		} else {
//			request.setAttribute("contentPageAdmin", "AdminComponent/mainManager.jsp");
//		}
//	request.setAttribute("contentPage", "component/Body.jsp");
//	RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//		RequestDispatcher dispatcher = request.getRequestDispatcher("component/indexAdmin.jsp");

//		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
