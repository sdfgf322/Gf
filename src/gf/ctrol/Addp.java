package gf.ctrol;


import java.io.File;
import java.io.IOException;

import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import gf.service.ProductService;
import gf.pojo.Category;
import gf.pojo.Product;

import com.mysql.jdbc.StringUtils;

@WebServlet("/Addp")
public class Addp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductService productService = new ProductService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productMg= null;
		String productPhoto = null;
		
		Integer categoryId = null;
		try {
			//设置文件上传后的存储位置(项目中必须先存在)
			String realPath = getServletContext().getRealPath("/statics/file");
			// 为基于磁盘的文件项创建DiskFileItemFactory对象
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 配置存储库（以确保使用安全的临时位置）
			ServletContext servletContext = this.getServletConfig().getServletContext();
			File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
			factory.setRepository(repository);
			// 创建新的文件上载处理程序
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 设置总请求大小约束（字节）
			upload.setSizeMax(10*1024*1024);	// 10M
			//设置保存文件的编码方式，
			upload.setHeaderEncoding("UTF-8");
			// 分析请求
			List<FileItem> items = upload.parseRequest(request);
			// 处理上传的项目
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
			    FileItem item = iter.next();
			    if (item.isFormField()) { 	// 普通文本内容
			    	String name = item.getFieldName();
			    	String value = item.getString();
			    	if(StringUtils.isNullOrEmpty(value) 
			    			|| value.trim().length()==0) {
			    		request.setAttribute("error", "内容不能为空");
			    		request.getRequestDispatcher("view_goods").forward(request, response);
			    		return;
			    	}
			        value = value.trim();
			        switch (name) {
					case "productMg":
						productMg = new String(value.getBytes("ISO-8859-1"),"utf-8");
						break;
					case "categoryId":
						categoryId = Integer.valueOf(value);
						break;
					
					default:
						break;
					}
			    } else {					// 上传的文件数据
			        String fileName = item.getName();	// 获取文件名
			        String contentType = item.getContentType();// 获取文件的MIME类型
			        if(contentType.equals("image/png") 
			        		|| contentType.equals("image/gif")
			        		|| contentType.equals("image/jpeg")) {
			        	// 重新获取文件名
			        	String rand = UUID.randomUUID().toString();// 获取一个UUID值
			        	productPhoto = rand+fileName.substring(fileName.lastIndexOf("."));
			        	// 上传文件
			        	File uploadedFile = new File(realPath,productPhoto);
			        	item.write(uploadedFile);
			        }
			        else {
			        	request.setAttribute("error", "上传必须为图片");
			        	request.getRequestDispatcher("view_goods").forward(request, response);
			        	return;
			        }
			    }
			}
			
			// 把数据放入数据库
			Product product = new Product(productMg, productPhoto,new Category(categoryId,null));
					
		
			productService.addGoods(product);
			request.setAttribute("error", "添加商品成功");
			request.getRequestDispatcher("view_goods").forward(request, response);
        	return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
