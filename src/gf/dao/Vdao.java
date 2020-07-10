package gf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import gf.pojo.Category;
import gf.pojo.Product;
import gf.tools.BaseDao;

public class Vdao {
	/**
	 * 查询出所有的分类信息
	 * @return
	 */
	public ArrayList<Category> listCategories(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Category> array = new ArrayList<>();
		try {
			conn = BaseDao.getConnection();
			String sql = "select * from gf_category";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, null);
			while(rs.next()) {
				array.add(new Category(rs.getInt("cid"),rs.getString("category")));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return array;
	}
	/**
	 * 从数据库中读取所有的商品，放入list中(根据录入时间降序、商品标签降序)
	 * @return 所有商品列表
	 */
	public ArrayList<Product> listGoods(){
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<Product> array = new ArrayList<>();
		try {
			conn = BaseDao.getConnection();
			String sql = "select * from gf_category"
					+ " inner join gf_product"
					+ " on gf_category.cid=gf_product.categoryId";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, null);
			while(rs.next()) {
				array.add(new Product(rs.getString("productPhoto"), rs.getString("productMg"),
						new Category(rs.getInt("cid"), rs.getString("category"))));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return array;
	}

}
