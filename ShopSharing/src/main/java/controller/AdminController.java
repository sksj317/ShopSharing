package controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.AdminCommand;
import model.Member;
import model.SQna;
import service.AdminService;
import service.MemberService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/adminMain.com", method = RequestMethod.GET)
	public String admin1(AdminCommand adminCommand, Model model) {
		Integer postCnt = adminService.postCnt();
		Integer todayMbrCnt = adminService.todayMbrCnt();
		Integer qnaCnt = adminService.qnaCnt();
		Integer contractCnt = adminService.contractCnt();
		
		List<Member>list = memberService.memberList();
		
		model.addAttribute("list",list);
		
		model.addAttribute("postCnt", postCnt);
		model.addAttribute("todayMbrCnt", todayMbrCnt);
		model.addAttribute("qnaCnt", qnaCnt);
		model.addAttribute("contractCnt", contractCnt);
		
		return "admin/adminMain";
	}

	@RequestMapping(value = "/adminPost.com", method = RequestMethod.GET)
	public String admin2(Model model) {
		List<AdminCommand> postList = adminService.notPmList();
		System.out.println("등록대기목록 : "+postList);
		model.addAttribute("postList", postList);

		return "admin/postingWatingList";
	}

	@RequestMapping(value = "/adminPost.com", method = RequestMethod.POST)
	public String Permission(AdminCommand adminCommand, Model model) {
		System.out.println("controller/command");
		List<Long> postPmNum = adminCommand.getPostPmNum();
		String postResult = adminCommand.getPostResult();
		List<String> postType = adminCommand.getPostType();
		List<Integer> listIndex = adminCommand.getListIndex();
		System.out.println("대기번호 : " + postPmNum);
		System.out.println("선택유형 : " + postType);
		System.out.println("승인/거절 : " + postResult);
		System.out.println("선택인덱스 : " + listIndex);
		if (postResult.equals("1")) {
			if (listIndex != null) {
				for (Integer s : listIndex) {
					if (postType.get(s).equals("s")) {
						Integer result = adminService.shopPermission(postPmNum.get(s));
						
					} else {
						Integer result = adminService.goodsPermission(postPmNum.get(s));
					}
				}
			}
		} else {
			if (listIndex != null) {
				for (Integer s : listIndex) {
					if (postType.get(s).equals("s")) {
						adminService.shopDeny(postPmNum.get(s));
					} else {
						adminService.goodsDeny(postPmNum.get(s));
					}
				}
			}
		}
		return "redirect:adminPost.com";
	}

	@RequestMapping(value = "/complaintWrite.com", method = RequestMethod.GET)
	public String admin3(Model model) {

		return "serviceRegist/complaintWrite";
	}

	@RequestMapping(value = "/complaintSubmit.com", method = RequestMethod.POST)
	public String admin4(SQna sQna, Model model) {
		String sQnaSub = sQna.getsQnaSub();
		String sQnaDetail = sQna.getsQnaDetail();

		System.out.println("controller : " + sQnaSub);
		System.out.println("controller : " + sQnaDetail);
		Integer result;
		try {
			result = adminService.insertQna(sQna);
			if (result > 0) {
				System.out.println("문의 등록 성공");
				return "redirect:/serviceCenter.com";
			} else {
				System.out.println("문의 등록 실패");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/complaintWrite.com";
		
	}

	@RequestMapping(value = "/adminComplaint.com", method = RequestMethod.GET)
	public String admin5(Model model) {
		List<SQna> sQnaList = adminService.sQnaList();
		model.addAttribute("sQnaList", sQnaList);

		return "admin/complaintList";
	}
	@RequestMapping(value = "/serviceCenter.com", method = RequestMethod.GET)
	public String admin6(Model model) {
		
		return "admin/serviceCenter";
	}

}
