package gf.ctrol;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.StringUtils;

import gf.pojo.User;
import gf.service.UserService;


@WebServlet("/adminLogin")
public class AdminLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// 创建服务类对象
	private UserService userService = new UserService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("userId");
		String userPsw = request.getParameter("userPsw");
		// 验证数据是否为空
		if(StringUtils.isNullOrEmpty(userId) || StringUtils.isNullOrEmpty(userPsw)) {
			request.getRequestDispatcher("view_login").forward(request,response);
			return;
		}
		// 调用服务类的查询方法，判断账户是否存在
		User bu = userService.findByIdAndPsw(userId, userPsw);
		if(bu == null) {// 登录失败
			request.getRequestDispatcher("view_login").forward(request,response);
			return;
		}
		else {// 成功
			request.getSession().setAttribute("user",bu);//把用户对象放入session
			response.sendRedirect("view_category");
			return;
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
