package gf.ctrol;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.StringUtils;

import gf.service.ProductService;

@WebServlet("/add_category")
public class AddCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		// 获取请求数据
		String category = request.getParameter("category");
		// 执行了String的trim方法，去除两端的空格
		if(StringUtils.isNullOrEmpty(category) 
				|| category.trim().length()==0) {
		
			request.getRequestDispatcher("/view_category").forward(request, response);
			return;
		}
		category = category.trim();
		// 判断分类在数据库中是否存在
		if(productService.findCategoryByName(category) != null) {
		
			request.getRequestDispatcher("/view_category").forward(request, response);
			return;
		}
		// 把分类添加到数据库
		productService.addCategory(category);
	
		request.getRequestDispatcher("/view_category").forward(request, response);
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
