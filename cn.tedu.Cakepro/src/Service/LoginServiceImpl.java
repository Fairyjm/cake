package Service;

import Dao.LoginDao;
import Dao.LoginDaoImpl;
import Pojo.User;

public class LoginServiceImpl implements LoginService{
	//数据流转
	//实现Dao层数据过渡
	LoginDao ld=new LoginDaoImpl();
	public User checkLoginService(String uname, String pwd){
		
		return ld.checkLoginDao(uname, pwd);
}
}