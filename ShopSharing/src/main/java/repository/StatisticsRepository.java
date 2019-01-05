package repository;

import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import command.CustomCommand;
import command.SurveyCommand;
import model.Member;
import model.Shop;

@Repository
public class StatisticsRepository extends AbstractRepositoryStatistics{

	private final String namespace = "repository.mapper.StatisticsMapper";
	
	public List<CustomCommand> selectCustomSurveyById(CustomCommand customCommand){ //아이디 하나로 받아오는 걸로 변경
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			System.out.println("Repository단 OK ID : "+ customCommand.getMemberId());
			String statement = namespace+".selectCustomSurveyById";
			return sqlSession.selectList(statement, customCommand);
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public List<SurveyCommand> getCustomerVoice() {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".getCustomerVoice";
			List<SurveyCommand> surveyCommand = sqlSession.selectList(statement);
			return surveyCommand;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public Integer updateMemberGrade(String contractPartnerId) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".updateMemberGrade";
			Integer result = sqlSession.update(statement, contractPartnerId);
			
			if(result>0) {
				sqlSession.commit();
				System.out.println("회원등급 변경완료");
			}else {
				sqlSession.rollback();
				System.out.println("회원등급 변경실패");
			}
			
			return result;
		
		}finally {
		
			sqlSession.close();
		
		}
		
	}

	public Long selectShopNumById(String id) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".selectShopNumById";
			Long shopNum = sqlSession.selectOne(statement, id);
			System.out.println("가져온 점포번호 : "+shopNum);
			return shopNum;
		
		}finally {
		
			sqlSession.close();
		
		}
	
	}

	public void updateMemberPointAverType(Member member) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".updateMemberPointAverType";
			Integer result = sqlSession.update(statement, member);
			
			if(result>0) {
				sqlSession.commit();
				System.out.println("MemberPointAverType 갱신완료");
			}else {
				sqlSession.rollback();
				System.out.println("MemberPointAverType 갱신실패");
			}
			
		
		}finally {
		
			sqlSession.close();
		
		}
		
	}

	public List<Member> getTopFiveSharerRanking() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".getTopFiveSharerRanking";
			List<Member> member = sqlSession.selectList(statement);
			return member;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public List<Shop> getTopFivePopularStores() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".getTopFivePopularStores";
			List<Shop> shop = sqlSession.selectList(statement);
			return shop;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public Member selectMemberInChart(String memberId) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".selectMemberInChart";
			Member member = sqlSession.selectOne(statement, memberId);
			return member;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public String selectContractPartnerIdFromProvider(SurveyCommand surveyCommand) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".selectContractPartnerIdFromProvider";
			String contractPartnerId = sqlSession.selectOne(statement, surveyCommand);
			return contractPartnerId;
		
		}finally {
		
			sqlSession.close();
		
		}
		
	}

	public String selectContractPartnerIdFromLender(SurveyCommand surveyCommand) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".selectContractPartnerIdFromLender";
			String contractPartnerId = sqlSession.selectOne(statement, surveyCommand);
			return contractPartnerId;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public String selectContractPartnerIdFromConsign(SurveyCommand surveyCommand) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".selectContractPartnerIdFromConsign";
			String contractPartnerId = sqlSession.selectOne(statement, surveyCommand);
			return contractPartnerId;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public Integer isNotNullCon(String id) {

		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".isNotNullCon";
			Integer result = sqlSession.selectOne(statement, id);
			return result;
		
		}finally {
		
			sqlSession.close();
		
		}
	}

	public Integer isNotNullConFromLender(String id) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".isNotNullConFromLender";
			Integer result = sqlSession.selectOne(statement, id);
			return result;
		
		}finally {
		
			sqlSession.close();
		
		}
	}
	
public Integer isNotNullConsignCon(String id) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			
			String statement = namespace+".isNotNullConsignCon";
			Integer result = sqlSession.selectOne(statement, id);
			return result;
		
		}finally {
		
			sqlSession.close();
		
		}
	}
	
}
	

