package gf.ctrol;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import gf.pojo.Category;
import gf.pojo.Product;
import gf.service.ProductService;

@WebServlet("/view_goods")
public class ViewGoods extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		// 获取分类列表
		ArrayList<Category> categories = productService.listCategories();
		request.setAttribute("categories", categories);
		// 获取所有商品信息列表
		ArrayList<Product> product = productService.listGoods();
		request.setAttribute("product", product);
		
		request.getRequestDispatcher("/WEB-INF/jsp/f_m.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
