package controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ConsignConCommand;
import command.ShareConCommand;
import command.ShareReqCommand;
import model.Consignment;
import model.ShareReq;
import model.Shop;
import service.ContractService;


@Controller
public class ContractController {
	
	@Autowired
	private ContractService contractService;
	String memberId2;
	
	@RequestMapping(value = "/shopContractApply.com", method = RequestMethod.GET)
	public String contract(ShareReqCommand shareReqCommand,Model model,Shop shop) {
/*		System.out.println("shop num get : "+shop.getShopNum());
		ShareReqCommand shareReqCommand = new ShareReqCommand(); */
		System.out.println("shopnum save :"+shareReqCommand.getShopNum());
		System.out.println("shareReqCommand memberId : "+shareReqCommand.getMemberId());
		model.addAttribute("shareReqCommand",shareReqCommand);
		return "contract/shopContractApply";
	}
	@RequestMapping(value = "/shopContractApply.com", method = RequestMethod.POST)
	public String contract(ShareReqCommand shareReqCommand, Model model,HttpSession session) {		
		String read = (String)session.getAttribute("memberId");
		//Long shopNum = shareReqCommand.getShopNum();
		//System.out.println("shopNum : " + shopNum);
		memberId2 = shareReqCommand.setMemberId2(read);
		System.out.println("memberId 로그인 된 memberId2 : "+memberId2);
		System.out.println("shareReqCommand start : "+shareReqCommand.getShareReqStartPeriod());
		System.out.println("shop numbert : "+shareReqCommand.getShopNum());
		System.out.println("shopMemberId : "+shareReqCommand.getMemberId());
		Integer result = contractService.insertContract(shareReqCommand);

		if(result >0) {
			System.out.println("계약 신청 성공");
			return "redirect:/main.com";
		}else {
			System.out.println("계약 신청 실패");
			return "redirect:shopContractApply.com";
		}
		
	}
	
	@RequestMapping(value = "/shareContract.com", method = RequestMethod.GET)
	public String shareContract(@RequestParam("shareReqNum")Long shareReqNum, ShareReq shareReq,Model model) {
		shareReqNum = shareReq.getShareReqNum();
		System.out.println("shareReqNum : "+shareReq.getShareReqNum());
		ShareReq contract = contractService.contractSelect(shareReq);
		model.addAttribute("contract", contract);
		return "contract/shareContract";
	}
	@RequestMapping(value = "/consignContract.com", method = RequestMethod.GET)
	public String consignContract(@RequestParam("consignmentNum")Long consignmentNum, Consignment consignment,Model model) {
		consignmentNum = consignment.getConsignmentNum();
		System.out.println("consignmentNum : "+consignmentNum);
		Consignment contract = contractService.consignConSelect(consignment);
		System.out.println("contract qweqwewq: "+contract.getShopName());
		model.addAttribute("contract", contract);
		return "contract/consignContract";
	}
	
	@RequestMapping(value = "/payMent.com", method = RequestMethod.POST)
	public String shareContractInsert(ShareConCommand shareConCommand,Model model) {
		System.out.println("shareConCommand Controller : "+shareConCommand.getShareReqNum());
		Integer contract = contractService.contractInteger(shareConCommand);
		
		if(contract >0) {
			System.out.println("계약서 저장 성공!");
			return "redirect:/main.com";
		}else {
			System.out.println("계약서 저장 실패!");
			return "contract/payMent";
		}

		
	}
	@RequestMapping(value = "/consignPayment.com", method = RequestMethod.POST)
	public String consignConInsert(ConsignConCommand consignConCommand,Model model) {
		System.out.println("shareConCommand Controller : "+consignConCommand.getConsignmentNum());
		Integer contract = contractService.consignConInsert(consignConCommand);
		
		if(contract >0) {
			System.out.println("계약서 저장 성공!");
			return "redirect:/main.com";
		}else {
			System.out.println("계약서 저장 실패!");
			return "contract/consignPayment";
		}

		
	}
}


