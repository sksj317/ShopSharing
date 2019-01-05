package controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.GoodsReply;
import model.ShopReply;
import service.ReplyService;


@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping("/shopReplyInsert.do")
	public String insert(ShopReply shopReply, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("memberId");
		System.out.println("점포 번호"+shopReply.getShopNum());
		System.out.println("댓글 내용"+(String)shopReply.getShopReplyContent());
		System.out.println("점포제공자 ID"+(String)shopReply.getShopMemberId());
		System.out.println("댓글작성자 Id"+userId);
		shopReply.setShopReplyId(userId);
		replyService.insert1(shopReply);
		List<ShopReply> replyList = replyService.getReplyList(shopReply.getShopNum());
		System.out.println(replyList.get(0).getShopReplyContent());
		model.addAttribute("replyList", replyList);
		System.out.println("aaaaa");
		return "reply/shopReply";
	}
	
	@RequestMapping("/shopReplyList.do")
	public String list1(ShopReply shopReply, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("memberId");
		shopReply.setShopReplyId(userId);
		List<ShopReply> replyList = replyService.getReplyList(shopReply.getShopNum());	
		model.addAttribute("replyList", replyList);
		return "reply/shopReply";
	}
	@RequestMapping("/shopReplyDelete.do")
	public String shopReplyDelete(ShopReply shopReply,Model model) {
		System.out.println(shopReply.getShopReplyNum());
		replyService.shopReplyDelte(shopReply);
		List<ShopReply> replyList = replyService.getReplyList(shopReply.getShopNum());
		model.addAttribute("replyList", replyList);
		System.out.println("DeleteController+aaaa");
		return "reply/shopReply";
	}
	@RequestMapping("/goodsReplyInsert.do")
	public String goodsReplyInsert(GoodsReply goodsReply, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("memberId");
		goodsReply.setGoodsReplyId(userId);
		replyService.goodsReplyInsert(goodsReply);
		List<GoodsReply> goodsReplyList = replyService.getGoodsReplyList(goodsReply.getGoodsNum());
		model.addAttribute("goodsReplyList", goodsReplyList);
		System.out.println("aaaaa");
		return "reply/goodsReply";
	}
	@RequestMapping("/goodsReplyList.do")
	public String goodsReplyList(GoodsReply goodsReply, HttpSession session,Model model) {
		String userId = (String) session.getAttribute("memberId");
		goodsReply.setGoodsReplyId(userId);
		List<GoodsReply> goodsReplyList = replyService.getGoodsReplyList(goodsReply.getGoodsNum());
		model.addAttribute("goodsReplyList", goodsReplyList);
		System.out.println("aaaaa");
		return "reply/goodsReply";
	}
	@RequestMapping("/goodsReplyDelete.do")
	public String goodsReplyDelete(GoodsReply goodsReply,Model model) {
		replyService.goodsReplyDelte(goodsReply);
		List<GoodsReply> goodsReplyList = replyService.getGoodsReplyList(goodsReply.getGoodsNum());
		model.addAttribute("goodsReplyList", goodsReplyList);
		System.out.println("DeleteController+aaaa");
		return "reply/goodsReply";
	}
}
