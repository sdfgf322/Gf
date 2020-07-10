package gf.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;




import gf.pojo.User;
import gf.tools.BaseDao;

public class UserDao {
	/**
	 * 根据账户和密码查找对应的用户信息
	 * @param userId
	 * @param userPsw
	 * @return 成功返回用户对象，失败返回null
	 */
	public User findByIdAndPsw(String userId,String userPsw) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		User result = null;
		try {
			conn = BaseDao.getConnection();//获取连接
			String sql = "select * from gf_user "
					+ "where userId=? and userPsw=?";
			ps = conn.prepareStatement(sql);//创建执行块
			rs = BaseDao.query(ps, new Object[] {userId,userPsw});// 调用BaseDao的查询方法
			if(rs.next()) {
				// 从结果集获取创建对象
				result = new User(rs.getString("userId"), rs.getString("userPsw"));
			}
		} catch (Exception e) {e.printStackTrace();
		} finally {
			try {
				BaseDao.close(conn, ps, rs);
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return result;
	}
}













