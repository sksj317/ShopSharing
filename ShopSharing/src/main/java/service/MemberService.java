package service;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.Member;
import repository.MemberSessionRepository;
@Service
public class MemberService {
	@Autowired
	private MemberSessionRepository memberSessionRepository;
	
	public Integer insertMember(Member member) {	
		System.out.println("MemberSessionRepository" + member.getMemberId());
		return memberSessionRepository.insertMember(member);
	}
	
	public boolean loginCheck(Member member,HttpSession session ) {
		
		boolean result = memberSessionRepository.loginCheck(member);
		System.out.println("memberService"+member.getMemberId());
		if(result) {
			Member member2 = viewMember(member);
			session.setAttribute("memberId",member2.getMemberId());
			if(member2.getMemberId().equals("#admin")) {
				session.setAttribute("admin", member2.getMemberId());
			}
		}
		System.out.println(result);
		return result;
	}
	
	public Member viewMember(Member member) {
		System.out.println(member.getMemberId());
		return memberSessionRepository.viewMember(member);
	}
	
	public void logout(HttpSession session) {
		session.invalidate();
	}
	
	public List<Member> memberList(){
		return memberSessionRepository.memberList();
	}
	
	public Member selectMember(Member member) {
		return memberSessionRepository.selectMember(member);
	}
	
	public Integer updateMember(Member member) {
		System.out.println("Service"+member.getMemberPh());
		return memberSessionRepository.memberUpdate(member);	
	}
	
	public Integer pwUpdate(Member member) {
		System.out.println("Service"+member.getMemberId());
		System.out.println(member.getMemberPw());
		return memberSessionRepository.pwUpdate(member);
	}
	
	public void deleteMember(Member member) {
		System.out.println("Service"+member.getMemberId());
		memberSessionRepository.deleteMember(member);
	}
	
	public int checkSignup(String id) {
		System.out.println(id);
		return memberSessionRepository.checkSignUp(id);
	}
	
	public boolean memberFindId(Member member,Model model) {
		System.out.println("MemberService"+member.getMemberName());
		boolean result = memberSessionRepository.memberFindId(member);
		
		if(result) {
			member = viewId(member);
			model.addAttribute("member",member);
		}
		System.out.println("memberId"+member.getMemberId());
		System.out.println(result);
		return result;
	}
	
	public Member viewId(Member member) {
		System.out.println("viewIdService"+member.getMemberId());
		return memberSessionRepository.viewId(member);
	}

	public boolean memberFindPw(Member member, Model model) {
		boolean result = memberSessionRepository.memberFindPw(member);
		if(result) {
			member = viewId(member);
			model.addAttribute("member",member);
		}
		return result;
	}
	
}

	
