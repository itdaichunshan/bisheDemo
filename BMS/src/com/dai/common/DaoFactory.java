package com.dai.common;

import java.io.IOException;
import java.util.Properties;

/**
 * Dao工厂类
 * @author DaiChunShan
 *
 */
public class DaoFactory {
	
	private static Properties prop = new Properties();
	
	static{
		try {
			prop.load(Thread.currentThread().getContextClassLoader().getResourceAsStream("dao.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static Object getInstance(String arg){
		
		String str = prop.getProperty(arg);
		Object obj = null;
		try {
			 obj = Class.forName(str).newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return obj;
	}
}
