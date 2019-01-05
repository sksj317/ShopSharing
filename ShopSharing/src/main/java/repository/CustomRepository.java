package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import command.CustomCommand;

@Repository
public class CustomRepository extends AbstractRepositorySurvey {
	
	private final String namespace = "repository.mapper.CustomMapper";
	
	public Long selectCustomSurveyNum() {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			Long result = (Long)sqlSession.selectOne(namespace+".selectCustomSurveyNum");
			return result;
		}finally {
			sqlSession.close();
		}

	}
	
	public Integer insertCustomSurvey(CustomCommand customCommand)  {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertCustomSurvey";
		System.out.println("repository단 OK! 만족도 점수 : "+customCommand.getSatiStar());
		Integer result = sqlSession.insert(statement,customCommand);
			
			if(result>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
			sqlSession.close(); // 리소스 유출방지
			return result;
		
	}

}
