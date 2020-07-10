package gf.pojo;

public class Product {
   public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
public String getProductMg() {
		return productMg;
	}
	public void setProductMg(String productMg) {
		this.productMg = productMg;
	}
	public String getProductPhoto() {
		return productPhoto;
	}
	public void setProductPhoto(String productPhoto) {
		this.productPhoto = productPhoto;
	}

private String productMg;
   private String productPhoto;
   private Category category;
public Product(String productMg, String productPhoto, Category category) {
	super();
	this.productMg = productMg;
	this.productPhoto = productPhoto;
	this.category = category;
}
public Product() {
	super();
	// TODO Auto-generated constructor stub
}

   
	

}
