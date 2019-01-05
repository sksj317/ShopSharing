package controller;

import javax.servlet.http.HttpServletRequest; 


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Consignment;
import service.ConsignmentService;

@Controller
public class ConsignmentController {
	
	@Autowired
	private ConsignmentService consignmentService;
	@Autowired
	Consignment consignment;
	
	@RequestMapping(value = "/goodsContractApply.com", method = RequestMethod.GET)
	public String isNotNullShopCheck(@RequestParam("memberId2")String memberId2, Model model, HttpServletRequest request){
		
		consignment.setMemberId(request.getParameter("memberId"));
		consignment.setMemberId2(memberId2);
		consignment.setGoodsNum(Long.parseLong(request.getParameter("goodsNum")));
		consignment.setGoodsName(request.getParameter("goodsName"));
		
		Long result = consignmentService.isNotNullShopCheck(memberId2);
		if(result == 0) {
			return "redirect:/shareJoin.com";
		}else {
			model.addAttribute("consignment", consignment);
			return "contract/goodsContractApply";
		}
	}
	
	@RequestMapping(value = "/goodsContractApply.com", method = RequestMethod.POST)
	public String consignment(Consignment consignment, Model model) {		
		
		Integer result = consignmentService.consignmentReqInsert(consignment);

		if(result > 0) {
			System.out.println("위탁판매 계약신청 성공");
			return "redirect:/main.com";
		}else {
			System.out.println("위탁판매 계약신청 실패");
			return "redirect:/consignmentSaleList.com";
		}
		
	}

}
