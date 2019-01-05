package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import command.AdminCommand;
import model.SQna;

@Repository
public class AdminSessionRepository extends AbstractRepositoryAdmin{
	private final String namespace = "repository.mapper.AdminMapper";
	
	public List<AdminCommand> selectNotPermissionPost(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectNotPermissionPost";		
		try {
			System.out.println("Repository");
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}

	public Integer permissionUpdateShop(Long s) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".permissionUpdateShop";
		try {
			System.out.println("Repository shop number : "+s);
			Integer result = sqlSession.update(statement, s);
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

	public Integer permissionUpdateGoods(Long g) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".permissionUpdateGoods";
		try {
			System.out.println("Repository goods number : "+g);
			Integer result = sqlSession.update(statement, g);
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

	public Long denyDeleteShop(Long s) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".denyDeleteShop";
		try {
			System.out.println("Repository shop number : "+s);
			Long result = (long) sqlSession.update(statement, s);
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

	public Long denyDeleteGoods(Long g) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".denyDeleteGoods";
		try {
			System.out.println("Repository goods number : "+g);
			Long result = (long) sqlSession.update(statement, g);
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

	public List<SQna> sQnaList() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectSQnaList";		
		try {
			System.out.println("Repository");
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}
	}

	public Integer insertQna(SQna sQna) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertSQna";
		System.out.println("repository : "+sQna.getMemberId());
		
		try {
			Integer result = sqlSession.insert(statement, sQna);
		
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

	public long selectQnaNum() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectSQnaNum";
		
		try {
			long result = (long)sqlSession.selectOne(statement);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer shopPostCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".shopPostCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository shopPostCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}
	public Integer goodsPostCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".goodsPostCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository goodsPostCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer todayMbrCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".todayMbrCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository todayMbrCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer qnaCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".qnaCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository qnaCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer shareContractCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".shareContractCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository shareContractCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer consignContractCnt() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignContractCnt";
		try {
			Integer result = sqlSession.selectOne(statement);
			System.out.println("repository consignContractCnt:"+result);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}	
}
