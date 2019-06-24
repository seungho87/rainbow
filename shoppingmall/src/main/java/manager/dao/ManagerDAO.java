package manager.dao;

import java.util.List;

import user.bean.UserDTO;

public interface ManagerDAO {

	public List<UserDTO> getUserList();

	public int getTotalUser();

}
