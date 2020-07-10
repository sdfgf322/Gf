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

import gf.service.Vservice;

@WebServlet("/view_index")
public class ViewIndex extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Vservice vservice = new  Vservice();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 获取分类
		ArrayList<Category> categories = vservice.listCategories();
		request.setAttribute("categories", categories);
		// 获取所有商品列表
		ArrayList<Product> product = vservice.listGoods();
		request.setAttribute("product",product);
		
		// 跳转
		request.getRequestDispatcher("/WEB-INF/user/index.jsp").forward(request, response);
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
