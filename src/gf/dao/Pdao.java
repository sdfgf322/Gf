package gf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import gf.pojo.Category;
import gf.pojo.Product;
import gf.tools.BaseDao;

public class Pdao {
	/**
	 * 根据分类名查找对应分类
	 * @param category
	 * @return 找到返回分类对象 失败返回null
	 */
	public Category findCategoryByName(String category) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Category c = null;
		try {
			conn = BaseDao.getConnection();
			String sql = "select * from gf_category where category=?";
			ps = conn.prepareStatement(sql);
			rs = BaseDao.query(ps, new Object[] {category});
			if(rs.next()) {
				c = new Category(rs.getInt("cid"),rs.getString("category"));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return c;
	}
	/**
	 * 添加分类到数据库
	 * @param category
	 * @return 1-成功 0-失败
	 */
	public int addCategory(String category) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = BaseDao.getConnection();
			String sql = "insert into gf_category(category) values(?)";
			ps = conn.prepareStatement(sql);
			return BaseDao.alter(ps, new Object[] {category});
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, null);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return 0;
	}
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
	 * 根据cid值，删除category(如果分类下面有商品，不能删除)
	 * @param cid
	 * @return 1-成功 0-失败
	 */
	public int deleteCategoryByCid(Integer cid) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = BaseDao.getConnection();
			String sql = "delete from gf_category where cid=? "
					+ "and not exists(select * from gf_product where categoryId=?)";
			ps = conn.prepareStatement(sql);
			return BaseDao.alter(ps, new Object[] {cid,cid});
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, null);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return 0;
	}
	public int addGoods(Product product) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = BaseDao.getConnection();
			String sql = "insert into gf_product(productMg,productPhoto,categoryId) values(?,?,?)";
			ps = conn.prepareStatement(sql);
			return BaseDao.alter(ps, new Object[] {
					product.getProductMg(),product.getProductPhoto(),product.getCategory().getcId()
			
			});
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, null);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return 0;
	}
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
				array.add(new Product(
						rs.getString("productMg"),rs.getString("productPhoto"),
						new Category(rs.getInt("cid"), rs.getString("category"))
					
						));
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
