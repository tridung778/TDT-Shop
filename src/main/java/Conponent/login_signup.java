package Conponent;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.nguoidung_dao;
import model.nguoidung;

/**
 * Servlet implementation class login_signup
 */
@WebServlet("/login_signup")
public class login_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public login_signup() {
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
		request.getRequestDispatcher("component/login_signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		login(request, response);
	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String us = request.getParameter("userName");
		String pw = request.getParameter("passWord");
		String fw = "";
		try {
			nguoidung_dao d = new nguoidung_dao();
			nguoidung n = d.login(us, pw);
			System.out.println(n);
			if (n != null) {
				HttpSession session = request.getSession();
				session.setAttribute("username", n);
				fw = "/index.jsp";
			} else {
				request.setAttribute("errlogin", "Thông tin đăng nhập không đúng vui lòng thử lại !");
				fw = "component/login_signup.jsp";
			}

		} catch (Exception e) {
			request.setAttribute("errlogin", "Thông tin đăng nhập không đúng vui lòng thử lại !");
		}
//		request.getRequestDispatcher(fw).forward(request, response);

	}

}
