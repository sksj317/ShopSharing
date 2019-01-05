package repository;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.GoodsReply;
import model.ShopReply;

@Repository
public class ReplyRepository extends AbstractRepositoryReply {
	
	private final String namespace = "repository.mapper.ReplyMapper";
	
	public void insert1(ShopReply shopReply) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertShopReply";
		shopReply.setShopReplyDate(Calendar.getInstance().getTime());
		
		try{
			Integer result = sqlSession.insert(statement,shopReply);
			System.out.println("repositoryinsert"+shopReply.getShopMemberId());
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		}finally {
			sqlSession.close();
		}	
	}
	
	public List<ShopReply> list(int i){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".listReply";
		try{
			System.out.println("repository");
			List<ShopReply> result = sqlSession.selectList(statement,i);
			return result;
		}finally {
			sqlSession.close();
		}
		
	}

	public void shopReplyDelete(ShopReply shopReply) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".shopReplyDelete";
		try{
			System.out.println("repositoryDelete");
			sqlSession.delete(statement,shopReply);
			sqlSession.commit();
		}finally {
			sqlSession.close();
		}
		
		
	}

	public void goodsReplyInsert(GoodsReply goodsReply) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertGoodsReply";
		goodsReply.setGoodsReplyDate(Calendar.getInstance().getTime());
		
		try{
			Integer result = sqlSession.insert(statement,goodsReply);
			System.out.println("repositoryinsert"+goodsReply.getGoodsMemberId());
		if(result>0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		}finally {
			sqlSession.close();
		}	
		
	}

	public List<GoodsReply> goodsReplylist(int goodsNum) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".goodsReplyList";
		try{
			System.out.println("repository");
			List<GoodsReply> result = sqlSession.selectList(statement,goodsNum);
			return result;
		}finally {
			sqlSession.close();
		}
	}

	public void goodsReplyDelete(GoodsReply goodsReply) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".goodsReplyDelete";
		try{
			sqlSession.delete(statement,goodsReply);
			sqlSession.commit();
		}finally {
			sqlSession.close();
		}
	}
		
}
