package repository;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import model.Member;

@Repository
public class MemberSessionRepository extends AbstractRepositoryMember{
	private final String namespace = "repository.mapper.MemberMapper";

	
	public Integer insertMember(Member member) {
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		String statement = namespace+".insertMember";
		System.out.println("MemberSessionRepository");
		try {
			
			member.setMemberGrade("일반 회원");
			member.setMemberReg(Calendar.getInstance().getTime());
			member.setMemberPoint(0.0);
			member.setMemberPointCount(0);
			member.setMemberPointAver(0.0);
			
			Integer result = sqlSession.insert(statement, member);
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
	public boolean loginCheck(Member member) {
		System.out.println("MemberSessionRepository"+member.getMemberId());
		SqlSession sqlSession = getSqlSessionFactory().openSession();

		String name = sqlSession.selectOne("repository.mapper.MemberMapper.loginCheck",member);
		return (name ==null)?false:true;
	}
	public Member viewMember(Member member) {
		System.out.println(member.getMemberId());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		return sqlSession.selectOne("repository.mapper.MemberMapper.viewMember",member);
	}
	
	public void logout(HttpSession session) {}
	
	public List<Member> memberList(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		return sqlSession.selectList("repository.mapper.MemberMapper.memberList");
	}

	public Integer memberUpdate(Member member) {
		System.out.println("repository"+member.getMemberPh());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
		Integer i = sqlSession.update("repository.mapper.MemberMapper.memberUpdate",member);
		if(i > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		return i;
		}finally{sqlSession.close();
		
		}
	}

	public Member selectMember(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			return sqlSession.selectOne("repository.mapper.MemberMapper.memberSelect",member);
		}finally {
			sqlSession.close();
		}
		
	}

	public Integer pwUpdate(Member member) {
		System.out.println("repo"+member.getMemberId());
		System.out.println("repo"+member.getMemberPw());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
		Integer i = sqlSession.update("repository.mapper.MemberMapper.pwUpdate",member);
		if(i > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		return i;
		}finally{sqlSession.close();
		
		}
	}

	public void deleteMember(Member member) {
		System.out.println("repo"+member.getMemberId());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		sqlSession.delete("repository.mapper.MemberMapper.deleteMember",member);
		sqlSession.commit();
		sqlSession.close();
	}

	public int checkSignUp(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			System.out.println(id);
			return sqlSession.selectOne("repository.mapper.MemberMapper.checkSignup",id);
		}finally {
		sqlSession.close();
		}
		// TODO Auto-generated method stub
		
	}

	public boolean memberFindId(Member member) {
		System.out.println("MemberSessionRepository"+member.getMemberName());
		System.out.println("MemberSessionRepositoryfindId"+member.getMemberId());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String name = sqlSession.selectOne("repository.mapper.MemberMapper.memberFindId",member);
		return (name ==null)?false:true;
	}
	public Member viewId(Member member) {
		System.out.println("viewId"+member.getMemberId());
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try{
			return sqlSession.selectOne("repository.mapper.MemberMapper.viewId",member);
		}finally {
			sqlSession.close();
		}
	}
	public boolean memberFindPw(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String name = sqlSession.selectOne("repository.mapper.MemberMapper.memberFindPw",member);
		return (name ==null)?false:true;
	}
	
	

	
}
