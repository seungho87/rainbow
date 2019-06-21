package manager.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.bean.UserDTO;

@Repository
public class ManagerDAOMybatis implements ManagerDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<UserDTO> getUserList() {
		
		return sqlSession.selectList("managerSQL.getUserList");
	}

}
