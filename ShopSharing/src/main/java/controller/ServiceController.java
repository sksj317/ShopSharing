package controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.GoodsCommand;
import command.ShopCommand;
import model.Criteria2;
import model.Goods;
import model.PageMaker;
import model.Shop;
import service.ShareService;


@Controller
public class ServiceController {

	@Autowired
	private ShareService shareService;
	
	//시간제 공유 리스트
	@RequestMapping(value="/timeSharingList.com", method=RequestMethod.GET)
	public String timeSharingList(@ModelAttribute("cri")Criteria2 cri, Model model) {
		
		List<Shop> timeList = shareService.timeSharing(cri);
		model.addAttribute("timeList",timeList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(shareService.listCountCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);

		return "serviceList/timeSharingList";
	
	}
	
	/*@RequestMapping(value="/timeSharingList.com", method=RequestMethod.GET)
	public String timeSharingList(Model model) {
		
		List<Shop> timeList = shareService.timeSharing();
		model.addAttribute("timeList",timeList);


		return "serviceList/timeSharingList";
	
	}*/

	//샵인샵 리스트
	@RequestMapping(value="/shopInShopList.com", method=RequestMethod.GET)
	public String shopInShopList(@ModelAttribute("cri")Criteria2 cri,Model model) {
		List<Shop> timeList = shareService.timeSharing(cri);
		model.addAttribute("timeList",timeList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(shareService.listCountCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "serviceList/shopInShopList";
	
	}
	
	//메뉴테스트 리스트
	@RequestMapping(value="/menuTestList.com", method=RequestMethod.GET)
	public String menuTestList(@ModelAttribute("cri")Criteria2 cri,Model model) {
		List<Shop> timeList = shareService.timeSharing(cri);
		model.addAttribute("timeList",timeList);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(shareService.listCountCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "serviceList/menuTestList";
	
	}
	
	//위탁판매 리스트
	@RequestMapping(value="/consignmentSaleList.com", method=RequestMethod.GET)
	public String consignmentSaleList(@ModelAttribute("cri")Criteria2 cri,Model model) {
		List<Shop> saleList = shareService.saleList(cri);
		model.addAttribute("saleList",saleList);
		PageMaker pageMakerSaleList = new PageMaker();
		pageMakerSaleList.setCri(cri);
		pageMakerSaleList.setTotalCount(shareService.saleCountCriteria(cri));
		model.addAttribute("pageMakerSaleList", pageMakerSaleList);
		return "serviceList/consignmentSaleList";
	
	}
	
	//시간제 공유 상세보기
	@RequestMapping(value="/timeSharingDetail.com", method=RequestMethod.GET)
	public String timeSharingDetail(@RequestParam("shopNum")Long shopNum, Model model) {
		System.out.println("shopNum 컨트롤"+shopNum);
		System.out.println("상세보기 controller");
	
		Shop timeList = shareService.selectTimeSharingDetail(shopNum);
		model.addAttribute("timeList",timeList);
		return "serviceDetail/shopSharingDetail";
		
	
	}
	
	//샵인샵 상세보기
	@RequestMapping(value="/shopInShopDetail.com", method=RequestMethod.GET)
	public String shopInShopDetail(@RequestParam("shopNum")Long shopNum,Model model) {
		Shop timeList = shareService.selectTimeSharingDetail(shopNum);
		model.addAttribute("timeList",timeList);
		return "serviceDetail/shopSharingDetail";
	
	}
	
	//메뉴테스트 상세보기
	@RequestMapping(value="/menuTestDetail.com", method=RequestMethod.GET)
	public String menuTestDetail(@RequestParam("shopNum")Long shopNum,Model model) {
		Shop timeList = shareService.selectTimeSharingDetail(shopNum);
		model.addAttribute("timeList",timeList);
		return "serviceDetail/shopSharingDetail";
	
	}
	
	//위탁판매 상세보기
	@RequestMapping(value="/consignmentSaleDetail.com", method=RequestMethod.GET)
	public String consignmentSaleDetail(@RequestParam("goodsNum")Long goodsNum,Model model) {
		Goods goods = shareService.saleListDetail(goodsNum);
		model.addAttribute("goods",goods);
		return "serviceDetail/consignmentSaleDetail";
	
	}

	//점포 등록폼 열기
	@RequestMapping(value="/shareJoin.com", method=RequestMethod.GET)
	public String shareJoinForm(ShopCommand shopCommand, Model model ) {
			
		return "serviceRegist/shareJoin";
		
	}
	
	//점포 등록
	@RequestMapping(value="/shopJoin.com", method=RequestMethod.POST)
	public String shopJoin(ShopCommand shopCommand, Model modelz,HttpSession session, HttpServletRequest request) throws IOException {
		
		System.out.println(shopCommand.getShopImg() + " IMG ");
		System.out.println("Controller단 OK! 점포이름: "+ shopCommand.getShopName());
		
		Integer result = shareService.insertShop(shopCommand, session, request);
		
		if(result>0) {
			
			System.out.println("점포 등록 성공!"); // ajax를 활용해서 alert로 메시지를 띄우는 방법 추가할 것
			return "redirect:/main.com"; // 그냥 /main.com라고 쓰면 /main.com.jsp를 찾는다
		
		}else {
			
			System.out.println("점포 등록 실패");
			return "redirect:/shareJoin.com"; 
		
		}
		
	}
	
	//위탁상품 등록폼 열기
		@RequestMapping(value="/goodsJoin.com", method=RequestMethod.GET)
		public String goodsJoinForm(GoodsCommand goodsCommand, Model model) {
		
			return "serviceRegist/goodsJoin";
		
		}
	
	//위탁상품 등록
	@RequestMapping(value="/goodsJoin.com", method=RequestMethod.POST)
	public String goodsJoin(GoodsCommand goodsCommand, Model model,HttpSession session, HttpServletRequest request) throws IOException {
		
		System.out.println("Controller : "+goodsCommand.getGoodsImg());
		System.out.println("Controller단 OK! 상품이름: "+ goodsCommand.getGoodsName());
		Integer result = shareService.insertGoods(goodsCommand, session, request);
		
		if(result>0) {
			
			System.out.println("상품 등록 성공!"); // ajax를 활용해서 alert로 메시지를 띄우는 방법 추가할 것
			return "redirect:/main.com"; // 그냥 /main.com라고 쓰면 /main.com.jsp를 찾는다
		
		}else {
			
			System.out.println("상품 등록 실패");
			return "redirect:/goodsJoin.com"; 
		
		}
		
	}
	
	


}	
	/*
	
	@RequestMapping(value="/comment_insert", method=RequestMethod.POST)
	public String handleStep1(Comment comment, Model model) { // 커맨드 객체인 post된 comment를 받음 
							// 메소드가 같은 이름이지만, 다른 가인자이므로 오버로딩이 가능
		
		Integer result = commentService.insertComment(comment);
		
		if(result>0) {
			model.addAttribute("result",result);
			return "jsp/comment_insert";
		}else {
			return "redirect:/form.do"; // 그냥 /form.do라고 쓰면 /form.do.jsp를 찾는다
		}
	}
	  
	@RequestMapping(value="/comment_select", method=RequestMethod.POST)
	public String handleStep2(Comment comment, Model model) {
		System.out.println("controller : "+comment.getCommentNo());
		List<Comment> result = commentService.selectCommentByCondition(comment);
				 
		if(result != null) {
			model.addAttribute("result", result);
			return "jsp/comment_select";
		}else {
			return "redirect:/form.do";
		}
	} 
	@RequestMapping(value="/comment_update", method=RequestMethod.POST)
	public String handleStep3(Comment comment, Model model) {
		System.out.println("controller : "+comment.getCommentNo());
		Integer result = commentService.updateComment(comment);
		if(result>0) {
			model.addAttribute("result", result);
			return "jsp/comment_update";
		}else {
			return "redirect:/form.do";
		}
	}
	@RequestMapping(value="/comment_delete", method=RequestMethod.POST)
	public String handleStep4(Comment comment, Model model) {
		System.out.println("controller : "+comment.getCommentNo());
		Integer result = commentService.deleteComment(comment);
		model.addAttribute("result", result);
		return "jsp/comment_delete";
		
	}
	
		
	@RequestMapping(value="/main3.do", method=RequestMethod.GET)
	public String Ajaxmain(Model model) {		
		return "ajax/ajax_main";		
	}
	@RequestMapping(value="/main1.do", method=RequestMethod.GET)
	public String Ajaxmain1(Model model) {		
		return "ajax/ajax_main1";		
	}
	@RequestMapping(value="/main2.do", method=RequestMethod.GET)
	public String Ajaxmain2(Model model) {		
		return "ajax/ajax_main2";		
	}
	@RequestMapping(value="/ajax_html.do", method=RequestMethod.POST)
	public String handleStep(HttpServletRequest request, Model model) {
		System.out.println(request.getParameter("n"));
		commentService.ajaxSelect(request, model);
		return "ajax/ajax_html";		
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	public String login(Model model) {
		return "login/loginForm";		
	}
	@RequestMapping(value="/login_prg.do", method=RequestMethod.POST)
	public String loginPrg(Member member, Model model) {
		System.out.println("controller "+member.getMemberId());
		System.out.println("controller "+member.getMemberPwd());
		commentService.memberSelect(member, model);
		return "login/loginPrg";		
	}	
	
	@RequestMapping(value="/domino.do", method=RequestMethod.GET)
	public String domino(Model model) {
		commentService.dominoSelectA(model);
		return "domino/dominoMain";		
	}
	@RequestMapping(value="/bcat.do", method=RequestMethod.POST)
	public String domino(Acat acat, Model model) {
		System.out.println("controller "+acat.getAnum());
		commentService.dominoSelectB(acat, model);
		return "domino/bcat";		
	}
	@RequestMapping(value="/ccat.do", method=RequestMethod.POST)
	public String domino(Bcat bcat, Model model) {
		System.out.println("controller "+bcat.getBnum());
		commentService.dominoSelectC(bcat, model);
		return "domino/ccat";		
	}*/
	

