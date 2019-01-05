package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.CustomCommand;
import command.SurveyCommand;
import model.Member;
import service.CustomService;
import service.MemberService;
import service.StatisticsService;
import service.SurveyService;

@Controller
public class SurveyController {
	
	@Autowired
	private SurveyService surveyService;
	@Autowired
	private CustomService customService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private StatisticsService statisticsService;

	//설문종류 선택 페이지
	@RequestMapping(value = "/survey.com", method = RequestMethod.GET)
	public String survey(Model model) {
			
		return "survey/surveyChoice";
	
	}
	
	//점포제공자 설문폼
	@RequestMapping(value="/shopSharingSurvey.com", method = RequestMethod.GET)
	public String shopSharingSurveyForm(SurveyCommand surveyCommand, Model model, Member member, HttpSession session, HttpServletResponse response) throws IOException {
		
		String id = (String)session.getAttribute("memberId");
		Integer result = statisticsService.isNotNullCon(id);
		
		if(result > 0) {
		
			member.setMemberId(id);
			member = memberService.selectMember(member);
			model.addAttribute("Member",member);
			return "survey/shopSharingSurvey";		
		
		}else {
			
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('기존의 점포공유 계약이 없습니다(계약 후 설문을 이용해주세요)');</script>");
            out.flush();
			return "my/myPageSelect"; 
			
		}
	}
	
	//점포제공자 설문등록
	@RequestMapping(value="/shopSharingSurvey.com", method=RequestMethod.POST)
	public String shopSharingSurveyInsert(SurveyCommand surveyCommand, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println("contorller단 OK! 서비스 점수 : " + surveyCommand.getServiceStar());
		String id = (String)session.getAttribute("memberId");
		surveyCommand.setMemberId(id);
		
		Double mutualPoint = surveyCommand.getMutualStar();
		if(mutualPoint >= 4) {
			
			Integer updateResult = statisticsService.updateMemberGradeFromProvider(surveyCommand);
			
			if(updateResult>0) {
				System.out.println("회원등급 변경 및 평점 등록완료");
			}else {
				System.out.println("회원등급 변경 및 평점 등록실패");
			}
			
		}
		
		Integer result = surveyService.insertShopSurvey(surveyCommand);
		
		if(result>0) {
			
			System.out.println("점포제공자 설문 등록 성공!");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문에 참여해주셔서 감사합니다!');</script>");
            out.flush();
            
            if(surveyCommand.getSurveyRecharter().equals("예")) {
            return "serviceList/timeSharingList";	
            }else {
			return "survey/surveyChoice"; 
            }
		
		}else {
			
			System.out.println("점포제공자 설문 등록 실패");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문 등록에 실패했습니다.');</script>");
            out.flush();
			return "survey/shopSharingSurvey"; 
		
		}
	}
	
	//점포대여자 설문폼
	@RequestMapping(value="/shopLenderSurvey.com", method=RequestMethod.GET)
	public String shopLenderSurveyForm(SurveyCommand surveyCommand, Model model, Member member, HttpSession session, HttpServletResponse response) throws IOException {
		
		String id = (String)session.getAttribute("memberId");
		Integer result = statisticsService.isNotNullConFromLender(id);
		
		if(result > 0) {
		
			member.setMemberId(id);
			member = memberService.selectMember(member);
			model.addAttribute("Member",member);
			return "survey/shopLenderSurvey";		
		
		}else {
			
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('기존의 점포공유 계약이 없습니다(계약 후 설문을 이용해주세요)');</script>");
            out.flush();
			return "my/myPageSelect"; 
			
		}
		
	}
	
	//점포대여자 설문등록
	@RequestMapping(value="/shopLenderSurvey.com", method=RequestMethod.POST)
	public String shopLenderSurveyInsert(SurveyCommand surveyCommand, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println("contorller단 OK! 서비스 점수 : " + surveyCommand.getServiceStar());
		String id = (String)session.getAttribute("memberId");
		surveyCommand.setMemberId(id);
		
		Double mutualPoint = surveyCommand.getMutualStar();
		if(mutualPoint >= 4) {
			
			Integer updateResult = statisticsService.updateMemberGradeFromLender(surveyCommand);
			
			if(updateResult>0) {
				System.out.println("회원등급 변경 및 평점 등록완료"); 
			}else {
				System.out.println("회원등급 변경 및 평점 등록실패");
			}
		
		}
		
		Integer result = surveyService.insertShopSurvey(surveyCommand);
		
		if(result>0) {
			
			System.out.println("점포대여자 설문 등록 성공!");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문에 참여해주셔서 감사합니다!');</script>");
            out.flush();
			return "survey/surveyChoice"; 
		
		}else {
			
			System.out.println("점포대여자 설문 등록 실패");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문 등록에 실패했습니다.');</script>");
            out.flush();
			return "survey/shopLenderSurvey"; 
		
		}	
	
	}
	
	//위탁판매 설문폼
	@RequestMapping(value="/consignmentSurvey.com", method=RequestMethod.GET)
	public String consignmentSurveyForm(SurveyCommand surveyCommand, Model model, Member member, HttpSession session, HttpServletResponse response) throws IOException {
		
		String id = (String)session.getAttribute("memberId");
		Integer result = statisticsService.isNotNullConsignCon(id);
		
		if(result > 0) {
		
			member.setMemberId(id);
			member = memberService.selectMember(member);
			model.addAttribute("Member",member);
			return "survey/consignmentSurvey";		
		
		}else {
			
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('기존의 위탁점포 계약이 없습니다(계약 후 설문을 이용해주세요)');</script>");
            out.flush();
			return "my/myPageSelect"; 
			
		}
		
	}
	
	//위탁판매 설문등록
	@RequestMapping(value="/consignmentSurvey.com", method=RequestMethod.POST)
	public String consignmentSurveyInsert(SurveyCommand surveyCommand, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println("contorller단 OK! 서비스 점수 : " + surveyCommand.getServiceStar());
		String id = (String)session.getAttribute("memberId");
		surveyCommand.setMemberId(id);
		
		Double mutualPoint = surveyCommand.getMutualStar();
		if(mutualPoint >= 4) {
			
			Integer updateResult = statisticsService.updateMemberGradeFromLender(surveyCommand);
			
			if(updateResult>0) {
				System.out.println("회원등급 변경 및 평점 등록완료"); 
			}else {
				System.out.println("회원등급 변경 및 평점 등록실패");
			}
		
		}
		
		Integer result = surveyService.insertShopSurvey(surveyCommand);
		
		if(result>0) {
			
			System.out.println("상품제공자 설문 등록 성공!");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문에 참여해주셔서 감사합니다!');</script>");
            out.flush();
			return "survey/surveyChoice"; 
		
		}else {
			
			System.out.println("상품제공자 설문 등록 실패");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문 등록에 실패했습니다.');</script>");
            out.flush();
			return "survey/consignmentSurvey"; 
		
		}		
	}
		
	//메뉴테스트 설문폼
	@RequestMapping(value="/customerSurvey.com", method=RequestMethod.GET)
	public String customerSurveyForm(CustomCommand customCommand, Model model, Member member, HttpSession session, HttpServletResponse response) throws IOException {
		
		String id = (String)session.getAttribute("memberId");
		Integer result = statisticsService.isNotNullConFromLender(id);
		
		if(result > 0) {
		
			member.setMemberId(id);
			member = memberService.selectMember(member);
			model.addAttribute("Member",member);
			return "survey/customerSurvey";		
		
		}else {
			
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('기존의 점포공유 계약이 없습니다(계약 후 설문을 이용해주세요)');</script>");
            out.flush();
			return "my/myPageSelect"; 
			
		}
		
	}
	
	//메뉴테스트 설문등록
	@RequestMapping(value="/customerSurvey.com", method=RequestMethod.POST)
	public String customerSurveyInsert(CustomCommand customCommand, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		System.out.println("contorller단 OK! 만족도 점수 : " + customCommand.getSatiStar());
		customCommand.setMemberId((String)session.getAttribute("memberId"));
		Integer result = customService.insertCustomSurvey(customCommand);
		
		if(result>0) {
			
			System.out.println("고객 설문 등록 성공!");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문에 참여해주셔서 감사합니다!');</script>");
            out.flush();
			return "survey/surveyChoice";  
		
		}else {
			
			System.out.println("고객 설문 등록 실패");
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('설문 등록에 실패했습니다.');</script>");
            out.flush();
			return "survey/customerSurvey"; 
		
		}		
	}

}
