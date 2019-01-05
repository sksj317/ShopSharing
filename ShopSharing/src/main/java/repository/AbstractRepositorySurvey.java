package repository;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public abstract class AbstractRepositorySurvey {
	
	//생성자 없이 초기화 하기 위해 static사용
	private static SqlSessionFactory sqlSessionFactory;	
	
	static {
		setSqlSessionFactory();
	}
	
	private static void setSqlSessionFactory() {
		String resource = "mybatis-config-Survey.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		}catch (IOException e) {
			throw new IllegalArgumentException(e);			
		}
	
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}
		
	public SqlSessionFactory getSqlSessionFactory() {
			return sqlSessionFactory;
		}
	
}
