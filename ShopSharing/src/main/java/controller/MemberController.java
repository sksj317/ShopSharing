package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Member;
import service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// 메인페이지
	@RequestMapping(value = "/main.com", method = RequestMethod.GET)
	public String main(Model model) {
		return "main/main";
	}
	
	// 회원 가입 폼 
	@RequestMapping(value = "/memberJoin.com", method = RequestMethod.GET)
	public String memberJoin(Member member, Model model) {
		return "main/memberJoin";
	}
	
	// 회원 가입 
	@RequestMapping(value = "/memberInsert.com", method = RequestMethod.POST)
	public String MemberInsert(Member member, Model model) {
		Integer result = memberService.insertMember(member);
			if(result>0) {	
				return "redirect:/main.com"; // 로그인 성공시 메인 페이지
			}else {
				return "redirect:/memberJoin.com"; // 로그인 실패시 회원가입 페이지  
		}
	}
	
	// 로그인 폼
	@RequestMapping(value = "/login.com", method = RequestMethod.GET)
	public String Login(Member member, Model model) {
		return "main/login";
	}
	
	//로그인 확인
	@RequestMapping("loginCheck.com")
	public ModelAndView loginCheck(@ModelAttribute Member member ,HttpSession session) {
		boolean result = memberService.loginCheck(member,session);
		ModelAndView mav = new ModelAndView();
		if(result== true) {
			mav.setViewName("main/main"); // 성공시 메인페이지
		}else {
			mav.setViewName("main/login"); // 실패시 로그인 페이지
			mav.addObject("msg","failure");
		}
		return mav;
	}
	// 로그아웃
	@RequestMapping("logout.com")
	public ModelAndView logout(HttpSession session) {
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/main");
		return mav;
	}
	
	//  아이디중복확인
	@ResponseBody
	@RequestMapping(value = "/checkSignup.com", method = RequestMethod.POST)
    public String checkSignup(HttpServletRequest request, Model model) {
		
        String id = request.getParameter("memberId");
        int rowcount = memberService.checkSignup(id);
        return String.valueOf(rowcount);
    }
	
	
	// 마이페이지 폼
	@RequestMapping(value = "myPage.com")
	public String myPage(Member member, Model model,HttpSession session) {	
		return "my/myPageSelect";
	}
	
	// 회원정보 수정 페이지 폼
	@RequestMapping(value= "privacyModify.com")
	public String privacyModify(Member member, Model model,HttpSession session) {
		member.setMemberId((String)session.getAttribute("memberId"));
		member= memberService.selectMember(member);
		model.addAttribute("member",member);
		return "my/privacyModify";
	}
	
	//회원 정보 수정
	@RequestMapping(value="update.com")
	public String memberUpdate(Member member, Model model) {
		System.out.println("Controller"+member.getMemberPh());
		Integer i= memberService.updateMember(member);
		if(i > 0 ) {
			model.addAttribute("member",member);
			return "redirect:myPage.com";
		}else {
			return "redirect:/main/myPage.com";
		}
	}
	
	// 비밀번호 변경 폼
	@RequestMapping(value="changePw.com")
	public String memberPwModify(Member member, Model model,HttpSession session) {
		member.setMemberId((String)session.getAttribute("memberId"));
		member = memberService.selectMember(member);
		model.addAttribute("member",member);
		return "my/changePassword";
	}
	// 비밀번호 변경
	@RequestMapping(value="pwUpdate.com")
	public String memberPwUpdate(Member member ,Model model) {
		System.out.println("controller"+member.getMemberPw());
		System.out.println(member.getMemberPw());
		Integer i = memberService.pwUpdate(member);
		if(i>0) {
			model.addAttribute("member",member);
			return "redirect:myPage.com";
		}else {
			return "redirect:/main/myPage.com";
		}
	}
	
	@RequestMapping(value="pwUpdate1.com",method = RequestMethod.POST)
	public String memberPwUpdate1(Member member,Model model) {
		Integer i = memberService.pwUpdate(member);
		if(i>0) {
			model.addAttribute("member",member);
			return "redirect:main.com";
		}else {
			return "redirect:main.com";
		}
	}
	// 회원 탈퇴 폼
	@RequestMapping(value="deleteMember.com")
	public String deleteMember(Member member, Model model,HttpSession session) {
		member.setMemberId((String)session.getAttribute("memberId"));
		member = memberService.selectMember(member);
		model.addAttribute("member",member);
		return "my/deleteMember";
	}
	
	@RequestMapping(value="memberDelete.com")
	public String memberDelete(Member member,Model model,HttpSession session) {
		System.out.println("controller"+member.getMemberId());
		memberService.deleteMember(member);
		session.invalidate();
		return "redirect:/main.com";
	}
	// 아이디 찾기
	@RequestMapping(value="findId.com")
	public String findId(Member member ,Model model) {
		return "main/findId";
	}
	
	
	@RequestMapping("memberFindId.com")
	public ModelAndView memberFindId(@ModelAttribute Member member,Model model) {
		System.out.println("MemberController"+member.getMemberName());
		boolean result = memberService.memberFindId(member,model);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("main/findIdSuccess");
		}else {
			mav.setViewName("main/findId");
			mav.addObject("msg","failure");
		}
		return mav;
	}

	@RequestMapping(value ="findPw.com", method= RequestMethod.GET)
	public String memberFindpw(Member member , Model model) {
		return "main/findPw";
	}
	@RequestMapping(value= "memberFindPw.com" , method = RequestMethod.POST)
	public ModelAndView memberFindPw(@ModelAttribute Member member , Model model) {
		boolean result = memberService.memberFindPw(member,model);
		ModelAndView mav = new ModelAndView();
		if(result == true) {
			mav.setViewName("redirect:/findPwSuccess.do");
			
		}else {
			mav.setViewName("main/findPw");
			mav.addObject("msg","failure");
		}
			return mav;
	}
	@RequestMapping(value = "findPwSuccess.do")
	public String findPwSuccess(Member member ,Model model) {
		return "main/findPwSuccess";
	}
	//회원 리스트
		@RequestMapping("list.com")
		public String memberList(Model model) {
			List<Member>list = memberService.memberList();
			
			model.addAttribute("list",list);
			return "main/memberList";
		}
}
