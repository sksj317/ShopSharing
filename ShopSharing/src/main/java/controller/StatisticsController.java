package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar; 
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.CustomCommand;
import command.MenuTestResultCommand;
import command.SurveyCommand;
import model.Member;
import model.Shop;
import service.StatisticsService;

@Controller
public class StatisticsController {
	
	@Autowired
	private StatisticsService statisticsService;
	
	//통계정보 선택 페이지
	@RequestMapping(value = "/statistics.com", method = RequestMethod.GET)
	public String statistics(Model model) {
		
		return "statistics/statisticsChoice";
	
	}
	
	//메뉴테스트 결과 페이지
	@RequestMapping(value = "/menuTestResult.com", method = RequestMethod.GET)
	public String menuTestResult(CustomCommand customCommand, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		
		String id = (String)session.getAttribute("memberId"); 
		System.out.println("controller단 OK! 사용자 아이디 : " + id); 
		customCommand.setMemberId(id);
		
		List<CustomCommand> customerSurveys = statisticsService.selectCustomerSurvey(customCommand);
		// 코멘트는 List 그대로 보내서 출력
		
		if(customerSurveys.size() != 0) {
		
			System.out.println(id+"의 고객설문정보 불러오기 완료!");
			System.out.println(customerSurveys.get(0).getCustomComment()+"의 만족도 : "+customerSurveys.get(0).getSatiStar());
			MenuTestResultCommand menuTestResultCommand = statisticsService.calculateCustomerSurveyAverage(customerSurveys);
			System.out.println(id+"의 메뉴테스트 고객만족도 평균 : "+ menuTestResultCommand.getSatiStarAver());
			
			//코드정리 필요(필요없는 속성들이 있음)
			menuTestResultCommand.setCustomDate(Calendar.getInstance().getTime());
			model.addAttribute("CustomerSurveys", customerSurveys );  
			model.addAttribute("MenuTestResultCommand", menuTestResultCommand); // 여기에 1.코멘트 정보 모두와 2.아이디까지 담아서 이것만 보낼 수 있도록 수정
			
			return "statistics/menuTestResult"; 
		
		}else {
		
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('고객설문정보가 없습니다(메뉴테스트 대여자가 아닙니다)');</script>");
            out.flush();
			return "statistics/statisticsChoice";
		
		}
	}
	
	// 공유설문 내의 서비스불만과 코멘트를 가져오는 페이지 >> 추후 관리자에 링크
	@RequestMapping(value = "/serviceComplaint.com", method = RequestMethod.GET)
	public String serviceComplaint(Model model) {
		
		List<SurveyCommand> surveyCommand = statisticsService.getCustomerVoice();
		model.addAttribute("SurveyCommand", surveyCommand);
		return "statistics/serviceComplaint";
	
	}
	
	//우수공유자 top5
	@RequestMapping(value = "/sharerRanking.com", method = RequestMethod.GET)
	public String sharerRanking(Model model, HttpServletResponse response) throws IOException {
		
		List<Member> member = statisticsService.getTopFiveSharerRanking();
		
		if(member.size() >= 5) {
			
			model.addAttribute("Member", member);
			return "statistics/sharerRanking";
		
		}else {
		
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('등록 회원이 5명 이상이어야 가능한 서비스입니다');</script>");
            out.flush();
			return "statistics/statisticsChoice";
		
		}
	
	}
	
	//우수공유자 상세정보 보기
	@RequestMapping(value = "/selectMemberInChart.com", method = RequestMethod.GET)
	public String selectMemberInChart(@RequestParam("memberId")String memberId, Model model) {
		
		Member member = statisticsService.selectMemberInChart(memberId);
		System.out.println(model.addAttribute("Member", member));
		return "statistics/excellenceSharerDetail";
	
	}
	
	//인기점포 top5
	@RequestMapping(value = "/popularStores.com", method = RequestMethod.GET)
	public String popularStores(Model model, HttpServletResponse response) throws IOException {
			
		List<Shop> shop = statisticsService.getTopFivePopularStores();
		
		if(shop.size() >= 5) {
			
			model.addAttribute("Shop", shop);
			return "statistics/popularStores";
		
		}else {
		
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('등록점포가 5개 이상이어야 가능한 서비스입니다');</script>");
            out.flush();
			return "statistics/statisticsChoice";
		
		}
		
	}
	
	//우수점포 상세정보 보기
	@RequestMapping(value = "/selectShopInChart.com", method = RequestMethod.GET)
	public String selectShopInChart(@RequestParam("shopNum")Long shopNum, @RequestParam("shopLentType")String shopLentType, Model model) {
			
		if(shopLentType.equals("점포공유")) {
			return "redirect:/timeSharingDetail.com?shopNum="+shopNum;
		}else if(shopLentType.equals("샵인샵")) {
			return "redirect:/shopInShopDetail.com?shopNum="+shopNum;
		}else if(shopLentType.equals("메뉴테스트")) {
			return "redirect:/menuTestDetail.com?shopNum="+shopNum;
		}
			return "statistics/statisticsChoice";
	
	}

}
