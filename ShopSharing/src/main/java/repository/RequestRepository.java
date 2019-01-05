package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.ConsignCon;
import model.Consignment;
import model.ShareCon;
import model.ShareReq;

@Repository
public class RequestRepository extends AbstractRepositoryRequest{
	private final String namespace = "repository.mapper.RequestMapper";

	public List<ShareReq> mySendShareReqList(String memberId2) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMySendShareReqList";
		try {
			System.out.println("Repository : "+memberId2);
			return sqlSession.selectList(statement, memberId2);
		}finally {
			sqlSession.close();
		}
	}

	public List<Consignment> mySendConsignmentList(String memberId2) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMySendConsignmentList";
		try {
			System.out.println("Repository : "+memberId2);
			return sqlSession.selectList(statement, memberId2);
		}finally {
			sqlSession.close();
		}
	}

	public List<ShareReq> myShareReqList(String memberId) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMyShareReqList";
		try {
			System.out.println("Repository : "+memberId);
			return sqlSession.selectList(statement, memberId);
		}finally {
			sqlSession.close();
		}
	}

	public List<Consignment> myConReqList(String memberId) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMyConReqList";
		try {
			System.out.println("Repository : "+memberId);
			return sqlSession.selectList(statement, memberId);
		}finally {
			sqlSession.close();
		}
	}

	public Integer shareReqPermission(Long shareReqNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".shareReqPermission";
		try {
			System.out.println("Repository shareReqNum : "+shareReqNum);
			Integer result = sqlSession.update(statement, shareReqNum);
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

	public Integer shareReqDeny(Long shareReqNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".shareReqDeny";
		try {
			System.out.println("Repository shareReqNum : "+shareReqNum);
			Integer result = sqlSession.update(statement, shareReqNum);
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

	public Integer consignmentPermission(Long consignmentNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignmentPermission";
		try {
			System.out.println("Repository consignmentNum : "+consignmentNum);
			Integer result = sqlSession.update(statement, consignmentNum);
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

	public Integer consignmentDeny(Long consignmentNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".consignmentDeny";
		try {
			System.out.println("Repository consignmentNum : "+consignmentNum);
			Integer result = sqlSession.update(statement, consignmentNum);
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

	public List<ConsignCon> myConsignConList(String memberId) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMyConsignConList";
		try {
			System.out.println("Repository : "+memberId);
			return sqlSession.selectList(statement, memberId);
		}finally {
			sqlSession.close();
		}
	}

	public List<ShareCon> myShareConList(String memberId) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectMyShareConList";
		try {
			System.out.println("Repository : "+memberId);
			return sqlSession.selectList(statement, memberId);
		}finally {
			sqlSession.close();
		}
	}

}
