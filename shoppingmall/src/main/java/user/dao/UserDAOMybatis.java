package user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.bean.UserDTO;

@Repository
public class UserDAOMybatis implements UserDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserDTO checkId(String id) {
		return sqlSession.selectOne("userSQL.checkId", id);
	}

	@Override
	public void join(UserDTO userDTO) {
		sqlSession.insert("userSQL.join", userDTO);
	}

	@Override
	public UserDTO login(String id) {
		return sqlSession.selectOne("userSQL.login", id);
	}

	@Override
	public String pwdCheck(String id) {
		return sqlSession.selectOne("userSQL.pwdCheck", id);
	}

	@Override
	public void modify(UserDTO userDTO) {
		sqlSession.update("userSQL.modify", userDTO);
	}
}
