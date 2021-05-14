package Utils;
import java.io.IOException;
import java.io.InputStream;
/**
 * 此类是连接的工具类
 * @author 15806
 *
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;
public class ConnectionUtils {
	//后期获取当前信息用静态代码获取
	private static String driver=null;
	private static String username=null;
	private static String password=null;
	private static String url=null;
	private static Properties props=new Properties();
	//保证每个线程中只有一个连接，避免资源浪费
	private static ThreadLocal<Connection> tl=new ThreadLocal(); 
	/**
	 * 用静态的代码块获取db.priperties
	 */
	static {
		try {
			//类加载器读取文件,并且以流的方式获取资源
			InputStream in=ConnectionUtils.class.getClassLoader().getResourceAsStream("db.properties");
			props.load(in);
			
			driver=props.getProperty("jdbc.driver");
			url=props.getProperty("jdbc.url");
			username=props.getProperty("jdbc.username");
			password=props.getProperty("jdbc.password");
			Class.forName(driver);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		/**
		 * 获取连接的方法
		 */
	
		public static Connection getConn() throws Exception{
		//先从tl中获取
		Connection conn=tl.get();
        if(conn==null){
            conn=DriverManager.getConnection(url,password,username);
        tl.set(conn);
		}
		return conn;//连接
		}
		 /**
		 * 关闭连接的方法 
		 */
		public static void closeConn() throws Exception{
		Connection conn=tl.get();
		if(conn!=null) {
			conn.close();
		}
		tl.set(null);
		}
		public static  void main(String[] args)throws Exception{
			Connection c=getConn();
			Connection c1=getConn();
			System.out.println(c==c1);
		}
	}
	
