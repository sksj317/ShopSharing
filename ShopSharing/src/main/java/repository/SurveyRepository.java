package repository;

import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository;

import command.SurveyCommand;

@Repository
public class SurveyRepository extends AbstractRepositorySurvey {

	private final String namespace = "repository.mapper.SurveyMapper";

	public Long selectSharingSurveyNum() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			Long result = sqlSession.selectOne(namespace+".selectSharingSurvey");
			return result;
		}finally {
			sqlSession.close();
		}
	
	}

	public Integer insertSharingSurvey(SurveyCommand surveyCommand) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertSharingSurveyNum";
		System.out.println("repository단 OK! 설문번호 : "+ surveyCommand.getSurveyNum());
		Integer result = sqlSession.insert(statement,surveyCommand);
			
			if(result>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
			sqlSession.close(); 
			return result;
		
	}
}
