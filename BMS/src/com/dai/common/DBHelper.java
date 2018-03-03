package com.dai.common;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSourceFactory;

/**
 * 数据库工具类
 * @author DaiChunShan
 *
 */
public class DBHelper {
	/**
	 * 获取文件对象
	 */
	private static Properties prop= new Properties();
	private static DataSource ds = null;
	static{
		try {
			prop.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("druid.properties"));//����ļ�
			ds = DruidDataSourceFactory.createDataSource(prop);//获得连接源
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 获取数据源
	 * @return  数据源
	 */
	public static DataSource getDataSource(){//返回数据源
		return ds;
	}
	
	/**
	 * 从连接源中获取数据库连接
	 * @return 连接对象
	 */
	public static Connection getConnection(){//返回数据源中的链接
		Connection conn = null;
		try {
			conn =  ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}


}
