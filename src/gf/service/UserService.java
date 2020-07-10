package gf.service;

import gf.dao.UserDao;
import gf.pojo.User;

public class UserService {
	// 创建数据库处理对象
	private UserDao userDao = new UserDao();
	/**
	 * 根据账户和密码查找对应的用户信息
	 * @param userId
	 * @param userPsw
	 * @return 成功返回用户对象，失败返回null
	 */
	public User findByIdAndPsw(String userId,String userPsw) {
		return userDao.findByIdAndPsw(userId, userPsw);
	}
}
