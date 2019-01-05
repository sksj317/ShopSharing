package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.GoodsReply;
import model.ShopReply;
import repository.ReplyRepository;

@Service
public class ReplyService {
	
	@Autowired
	private ReplyRepository replyRepository;
	
	public void insert1(ShopReply shopReply) {
		replyRepository.insert1(shopReply);
		System.out.println("insert1service"+shopReply.getShopMemberId());
		List<ShopReply> list = replyRepository.list(shopReply.getShopNum());
	
	}
	
	public List<ShopReply> getReplyList(int shopNum) {
		List<ShopReply> list = replyRepository.list(shopNum);
		System.out.println("Listservice");
		return list;
	}

	public void shopReplyDelte(ShopReply shopReply) {
		replyRepository.shopReplyDelete(shopReply);		
	}

	public void goodsReplyInsert(GoodsReply goodsReply) {
		replyRepository.goodsReplyInsert(goodsReply);
		List<ShopReply> list = replyRepository.list(goodsReply.getGoodsNum());	
	}

	public List<GoodsReply> getGoodsReplyList(int goodsNum) {
		List<GoodsReply> list = replyRepository.goodsReplylist(goodsNum);
		return list;
	}

	public void goodsReplyDelte(GoodsReply goodsReply) {
		replyRepository.goodsReplyDelete(goodsReply);	
	}
}
