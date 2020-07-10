package gf.pojo;

public class Category {
public Integer getcId() {
		return cId;
	}
	public void setcId(Integer cId) {
		this.cId = cId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
private Integer cId;
private String category;
public Category() {
	super();
	// TODO Auto-generated constructor stub
}
public Category(Integer cId, String category) {
	super();
	this.cId = cId;
	this.category = category;
}

	  
}
