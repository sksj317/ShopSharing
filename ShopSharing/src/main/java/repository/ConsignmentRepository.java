package repository;

import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository;

import model.Consignment;

@Repository
public class ConsignmentRepository extends AbstractRepositoryConsignment{
	
	private final String namespace = "repository.mapper.ConsignmentMapper";

	public Long isNotNullShopCheck(String memberId2) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".isNotNullShopCheck";
		try {
			System.out.println("Repository isNotNullShopCheck :"+memberId2);
			Long result = sqlSession.selectOne(statement, memberId2);
			System.out.println(memberId2+"님은 "+result+"개의 매장이 등록되어 있습니다"); // DB와의 연동이 바로바로 이뤄지지 않아서, 서버를 재실행해야만 갱신된 값이 들어옴 >> 1. 점포를 가진 사람이 위탁점포를 신청하는 것으로 가정 2. 서버를 갱신하고 위탁점포를 신청  
			return result;
		}finally {
			sqlSession.close();
		}
		
	}

	public Long getShopNum(String shopName) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".getShopNum";
		try {
			Long result = sqlSession.selectOne(statement, shopName);
			return result;
		}finally {
			sqlSession.close();
		}
		
	}

	public int consignmentReqInsert(Consignment consignment) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignmentReqInsert";
		try {
			
			int result = sqlSession.insert(statement, consignment);
			if(result>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			return result;
		
		}finally {
			sqlSession.close();
		}
		
	}
		
}
