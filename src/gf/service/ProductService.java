package gf.service;

import java.util.ArrayList;

import gf.dao.Pdao;
import gf.pojo.Category;
import gf.pojo.Product;

public class ProductService {
private Pdao pdao = new Pdao();
/**
 * 根据分类名查找对应分类
 * @param category
 * @return 找到返回分类对象 失败返回null
 */
public Category findCategoryByName(String category) {
	return pdao.findCategoryByName(category);
}
/**
 * 添加分类到数据库
 * @param category
 * @return 1-成功 0-失败
 */
public int addCategory(String category) {
	return pdao.addCategory(category);
}
/**
 * 查询出所有的分类信息
 * @return
 */
public ArrayList<Category> listCategories(){
	return pdao.listCategories();
}
/**
 * 根据cid值，删除category
 * @param cid
 * @return 1-成功 0-失败
 */
public int deleteCategoryByCid(Integer cid) {
	return pdao.deleteCategoryByCid(cid);
}
public int addGoods(Product product) {
    return pdao.addGoods(product);
}
public ArrayList<Product> listGoods(){
	return pdao.listGoods();
}

}
