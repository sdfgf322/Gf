package gf.service;

import java.util.ArrayList;

import gf.dao.Vdao;
import gf.pojo.Category;
import gf.pojo.Product;

public class Vservice {
	private Vdao vdao = new Vdao();
	/**
	 * 查询出所有的分类信息
	 * @return
	 */
	public ArrayList<Category> listCategories(){
		return vdao.listCategories();
	}
	/**
	 * 从数据库中读取所有的商品，放入list中(根据录入时间降序、商品标签降序)
	 * @return 所有商品列表
	 */
	public ArrayList<Product> listGoods(){
		return vdao.listGoods();
	}
	/**
	 * 根据分类id获取对应商品
	 * @param categoryId
	 * @return 对应商品的列表
	 */
	public ArrayList<Product> listGoodsByCategoryId(Integer categoryId){
		// 获取所有商品
		ArrayList<Product> product = vdao.listGoods();
		// 保存符合要求的商品
		ArrayList<Product> result = new ArrayList<>();
		// 遍历所有商品
		for(Product x : product) {
			// 如果当前商品的分类id跟传入的id相同，放入结果列表
			if(x.getCategory().getcId() == categoryId) {
				result.add(x);
			}
		}
		return result;
	}
}
