package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Criteria2;
import model.Goods;
import model.Shop;
import model.ShopReply;


@Repository
public class ShareRepository extends AbstractRepositoryShare {

	private final String namespace = "repository.mapper.ShareMapper";
	
	
	public Integer insertShop(Shop shop) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertShop";
		System.out.println("repo "+shop.getMemberId());
		
		try {
			
			System.out.println("Repository단 OK! 점포이름 : "+shop.getShopName());
			System.out.println("repository 저장 파일명 : "+shop.getShopStoredFileName());
			System.out.println("repository 이미지 이름: "+shop.getShopOriginalFile());
			Integer result = sqlSession.insert(statement, shop);
		
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

	public long selectShopNum() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectShopNum";
		
		try {
			long result = (long)sqlSession.selectOne(statement);
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public Integer insertGoods(Goods goods) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertGoods";
		
		try {
			
			System.out.println("Repository단 OK! 상품이름 : "+goods.getGoodsName());
			System.out.println("repository 이미지 이름: "+goods.getGoodsOriginalFile());
			Integer result = sqlSession.insert(statement, goods);
		
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
	public long selectGoodsNum() {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectGoodsNum";
		
		try {
			long result = (long)sqlSession.selectOne(statement);
			
			return result;
			
		}finally {
			sqlSession.close();
		}
	}

	public List<Shop> selectTimeSharingList(Criteria2 cri) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".selectTimeSharingList";
		System.out.println(cri.getPageStart());
		System.out.println(cri.getPerPageNum());
		
		try {
			List<Shop> result = sqlSession.selectList(statement,cri);
			System.out.println("repository list"+result);
			return result;
		}finally {
			
			sqlSession.close();
		}
	}

	public Shop selectTimeSharingDetail(Long shopNum) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		System.out.println("repository update "+ shopNum);
		String statement = namespace + ".selectTimeSharingUpdate";
		int i = sqlSession.update(statement,shopNum);
		System.out.println("repository update " +i);

		statement = namespace + ".selectTimeSharingDetail";	
		try {
			
			System.out.println("repository Detail " + shopNum);
			Shop shop = sqlSession.selectOne(statement, shopNum);			
			System.out.println("Repository detail "+i);
			
			sqlSession.commit();
			return shop;
		}finally {
			sqlSession.close();
		}
		

	}

	public int listCountCriteria(Criteria2 cri) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".listCountCriteria";
		try {
			int i = sqlSession.selectOne(statement, cri);
			System.out.println("listCountCriteria 카운트: "+i);
			return i;
		}finally {
			sqlSession.close();
		}
		
	}

	public List<Shop> saleList(Criteria2 cri) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".saleList";
		
		try {
			List<Shop> result = sqlSession.selectList(statement,cri);
			return result;
		}finally {
			sqlSession.close();
		}
		
	}

	public int saleCountCriteria(Criteria2 cri) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".saleCountCriteria";
		try {
			int i = sqlSession.selectOne(statement, cri);
			return i;
		}finally {
			sqlSession.close();
		}
	}

	public Goods saleListDetail(Long goodsNum) {
		// TODO Auto-generated method stub
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".saleListDetailCountUpdate";
		
		int i = sqlSession.update(statement,goodsNum);
		System.out.println("repository saleList update : " +i);
		
		statement = namespace + ".saleListDetail";	
		try {
			System.out.println("repository Detail " + goodsNum);
			Goods goods = sqlSession.selectOne(statement, goodsNum);			
			System.out.println("Repository detail "+goods);
			
			sqlSession.commit();
			return goods;
		}finally {
			sqlSession.close();
		}
		
	}

}
	/*
	public List<Comment> selectCommentByCondition(Comment comment){
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			System.out.println("Repository "+comment.getCommentNo());
			String statement = namespace+".selectCommentByCondition";
			return sqlSession.selectList(statement, comment);
		
		}finally {
		
			sqlSession.close();
		
		}
	}
	
	public Integer updateComment(Comment comment) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
		
			System.out.println("Repository "+comment.getCommentNo());
			String statement = namespace+".updateComment";
			Integer result = sqlSession.update(statement, comment);
			
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
	
	public Integer deleteComment(Long commentNo) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			Integer result = sqlSession.delete(String.format("%s.deleteComment", namespace), commentNo);
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
	public List ajaxSelect(Long result) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = null;
		if(result == 1) {
			statement = namespace + ".ajaxSelect1";
		}else if(result == 2) {
			statement = namespace + ".ajaxSelect2";
		} 
		
		try {
			System.out.println("Repository");
			return sqlSession.selectList(statement);
		}finally {
			sqlSession.close();
		}		
	}
	public Member memberSelect(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".memberSelect";
		System.out.println("Repository " + member.getMemberId());
		try {
			return sqlSession.selectOne(statement, member);			
		}finally {
			sqlSession.close();
		}	
	}
	public List<Acat> acatSelect() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".acatSelect";
		try {
			return sqlSession.selectList(statement);			
		}finally {
			sqlSession.close();
		}	
	}
	public List<Bcat> bcatSelect(Acat acat) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".bcatSelect";
		try {
			return sqlSession.selectList(statement, acat);			
		}finally {
			sqlSession.close();
		}
	}
	public List<Ccat> ccatSelect(Bcat bcat) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace + ".ccatSelect";
		try {
			return sqlSession.selectList(statement, bcat);			
		}finally {
			sqlSession.close();
		}
	}
*/


