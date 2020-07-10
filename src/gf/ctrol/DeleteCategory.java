package gf.ctrol;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.mysql.jdbc.StringUtils;

import gf.service.ProductService;

@WebServlet("/delete_category")
public class DeleteCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String cid = request.getParameter("cid");
		if(StringUtils.isNullOrEmpty(cid)) {
			request.setAttribute("delete_error","cid不能为空");
			request.getRequestDispatcher("/view_category").forward(request, response);
			return;
		}
		// 调用服务，完成删除
		if(productService.deleteCategoryByCid(Integer.valueOf(cid)) == 0) {
			request.setAttribute("delete_error","拥有商品的分类不能删除");
		}
		request.getRequestDispatcher("/view_category").forward(request, response);
		return;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
