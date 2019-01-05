package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ConsignReqCommand;
import command.ShareReqCommand;
import model.ConsignCon;
import model.Consignment;
import model.ShareCon;
import model.ShareReq;
import service.RequestService;

@Controller
public class RequestController {
	@Autowired
	private RequestService requestService;

	@RequestMapping(value = "/myTradeList.com", method = RequestMethod.GET)
	public String request(Model model, HttpSession session) {
		String memberId = (String) session.getAttribute("memberId");
		model.addAttribute("memberId", memberId);
		return "my/myTradeList";
	}
	
	@RequestMapping("/myRequestList.cm")
	public String request1(Model model, HttpSession session) {
		System.out.println("받은 요청목록ctrl");
		System.out.println("받은 요청목록, controller : " + (String) session.getAttribute("memberId"));
		List<ShareReq> mySendShareReqList = requestService.mySendShareReqList((String) session.getAttribute("memberId"));
		List<Consignment> mySendConsignmentList = requestService.mySendConsignmentList((String) session.getAttribute("memberId"));
		model.addAttribute("mySendShareReqList", mySendShareReqList);
		model.addAttribute("mySendConsignmentList", mySendConsignmentList);
		return "my/myTrade/myRequestList";
	}

	@RequestMapping("/myResponseList.cm")
	public String request2(Model model, HttpSession session) {
		System.out.println("controller : " + (String) session.getAttribute("memberId"));
		List<ShareReq> myShareReqList = requestService.myShareReqList((String) session.getAttribute("memberId"));
		List<Consignment> myConsignmentList = requestService.myConsignmentList((String) session.getAttribute("memberId"));
		model.addAttribute("myShareReqList", myShareReqList);
		model.addAttribute("myConsignmentList", myConsignmentList);
		return "my/myTrade/myResponseList";
	}
	
	@RequestMapping(value = "/myShareResponseList.com", method = RequestMethod.POST)
	public String Permission(ShareReqCommand shareReqCommand, ShareReq shareReq, Model model) {
		System.out.println("post:shopResponse");
		String permissionResult = shareReqCommand.getPermissionResult();
		Long shareReqNum = shareReqCommand.getShareReqNum();
		System.out.println("수락/거절 : "+permissionResult);
		System.out.println("신청번호 : "+shareReqNum);
		if(permissionResult.equals("1")) {
			Integer result = requestService.shareReqPermission(shareReqNum);
			String shareNum = "redirect:shareContract.com?shareReqNum="+shareReqNum;
			return shareNum;
		}else {
			Integer result = requestService.shareReqDeny(shareReqNum);
			return "redirect:myTradeList.com";
		}
		
	}
	@RequestMapping(value = "/myConsignResponseList.com", method = RequestMethod.POST)
	public String Permission1(ConsignReqCommand consignReqCommand, Consignment consignment, Model model) {
		System.out.println("post:consignResponse");
		String goodsPermissionResult = consignReqCommand.getGoodsPermissionResult();
		Long consignmentNum = consignReqCommand.getConsignmentNum();
		System.out.println("수락/거절 : "+goodsPermissionResult);
		System.out.println("신청번호 : "+consignmentNum);
		if(goodsPermissionResult.equals("1")) {
			Integer result = requestService.consignmentPermission(consignmentNum);
			String shareNum = "redirect:consignContract.com?consignmentNum="+consignmentNum;
			return shareNum;
		}else {
			Integer result = requestService.consignmentDeny(consignmentNum);
			return "redirect:myTradeList.com";
		}
		
	}
	
	@RequestMapping("/myContractList.cm")
	public String request3(Model model, HttpSession session) {
		System.out.println("controller : " + (String) session.getAttribute("memberId"));
		List<ConsignCon> myConsignConList = requestService.myConsignConList((String) session.getAttribute("memberId"));
		List<ShareCon> myShareConList = requestService.myShareConList((String) session.getAttribute("memberId"));
		model.addAttribute("myConsignConList", myConsignConList);
		model.addAttribute("myShareConList", myShareConList);
		return "my/myTrade/myContractList";
	}
}
