package repository;

import java.util.Calendar;  
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Acat;
import model.Bcat;
import model.Ccat;
import model.Comment;
import model.Member;

@Repository
public class CommentSessionRepository extends AbstractRepository {

	private final String namespace = "repository.mapper.CommentMapper";
	
	/*public Integer insertComment(Comment comment) {
	
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String statement = namespace+".insertComment";
		
		try {
			
			System.out.println("Repository "+comment.getCommentNo());
			System.out.println("Repository "+comment.getUserId());
			comment.setRegDate(Calendar.getInstance().getTime());
			
			Integer result = sqlSession.insert(statement, comment);
		
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
	}*/
}
