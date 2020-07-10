package gf.ctrol;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import gf.pojo.Category;
import gf.service.ProductService;

@WebServlet("/view_category")
public class ViewCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 获取所有分类信息
		ArrayList<Category> arr = productService.listCategories();
		// 把得到的列表放入request
		request.setAttribute("categories", arr);
		// 跳转
		request.getRequestDispatcher("/WEB-INF/jsp/Mcategory.jsp").forward(request, response);
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
