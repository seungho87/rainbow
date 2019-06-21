package user.dao;

import user.bean.UserDTO;

public interface UserDAO {

	public UserDTO checkId(String id);

	public void join(UserDTO userDTO);

	public UserDTO login(String id);

	public String pwdCheck(String id);

	public void modify(UserDTO userDTO);

}
