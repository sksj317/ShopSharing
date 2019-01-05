package repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import command.ConsignConCommand;
import model.Consignment;
import model.ShareCon;
import model.ShareReq;

@Repository
public class ContractRepository extends AbstractRepositoryContract{
	private final String namespace = "repository.mapper.ContractMapper";

	public long selectShareReqNum() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectShareReqNum";
		
		try {
			long result = sqlSession.selectOne(statement);
			return result;
		}finally {
			sqlSession.close();
		}

	}

	public Integer insertContract(ShareReq shareReq) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertContract";
		
		try {
			Integer result = sqlSession.insert(statement,shareReq);
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

	public ShareReq contractSelect(ShareReq shareReq) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".contractSelect";
		System.out.println("shareReq : asdasdas"+shareReq.getShareReqNum());
		try {
			shareReq = sqlSession.selectOne(statement,shareReq);
			return shareReq;
		}finally {
			sqlSession.close();
		}
	}

	public long selectShareConNum() {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectShareConNum";
		
		try {
			long result = sqlSession.selectOne(statement);
			return result;
		}finally {
			sqlSession.close();
		}
	}

	public Integer contractInteger(ShareCon shareCon) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".contractInteger";
		
		try {
			Integer result = sqlSession.insert(statement,shareCon);
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

	public Consignment consignConSelect(Consignment consignment) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignConSelect";
		System.out.println("consignment : asdasdas"+consignment.getConsignmentNum());
		try {
			consignment = sqlSession.selectOne(statement,consignment);
			return consignment;
		}finally {
			sqlSession.close();
		}
	}

	public long selectConsignConNum() {
				SqlSession sqlSession = getSqlSessionFactory().openSession();
				String statement = namespace+".selectConsignConNum";
				
				try {
					long result = sqlSession.selectOne(statement);
					return result;
				}finally {
					sqlSession.close();
				}
	}

	public Integer consignConInsert(ConsignConCommand consignConCommand) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignConInsert";
		
		try {
			Integer result = sqlSession.insert(statement,consignConCommand);
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
