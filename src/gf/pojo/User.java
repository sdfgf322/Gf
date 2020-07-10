package gf.pojo;

public class User {
  public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPsw() {
		return userPsw;
	}
	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}
private String userId;
  private String userPsw;
public User() {
	super();
	// TODO Auto-generated constructor stub
}
public User(String userId, String userPsw) {
	super();
	this.userId = userId;
	this.userPsw = userPsw;
}
  

}
