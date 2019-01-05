package service;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.GoodsCommand;
import command.ShopCommand;
import model.Criteria2;
import model.Goods;
import model.Member;
import model.Shop;
import model.ShopReply;
import repository.ShareRepository;

@Service
public class ShareService {

   @Autowired
   private ShareRepository shareRepository;

	static final String filePath = "C:\\Users\\HKEDU\\Documents\\ShopSharing\\mybatis-spring-web\\src\\main\\webapp\\WEB-INF\\image\\";
	File file = new File(filePath);

	String shopOriginalFile;
	String shopOriginalFileExtension;
	String shopStoredFileName;
	MultipartFile shopImg;
	Shop shop;
	Goods goods;
	String goodsOriginalFile;
	String goodsStoredFileName;
	String goodsOriginalFileExtension;
	String memberId;
	MultipartFile goodsImg;
	Member member;
	
	
   public Integer insertShop(ShopCommand shopCommand,HttpSession session, HttpServletRequest request) throws IOException {
      
      //Service단에서 Shop정보에 입력받지 않은 정보를 추가하는 곳으로 사용 >> 필요한 연산이 있으면 Service단에서 처리
      String writer = (String) session.getAttribute("memberId");
      long shopNum = shareRepository.selectShopNum();
      
      System.out.println("Service단 기존 ShopNum 확인 : " + shopNum);
      
      if (shopNum == 0) {
         shopNum = (long) 1;
      } else {
         shopNum = shopNum + 1;
      }
      String pathSet = request.getSession().getServletContext().getRealPath("");
      System.out.println("uppath : "+pathSet);
      String fullPath = pathSet+"WEB-INF\\image\\";
      System.out.println("fullpath:"+fullPath);
      System.out.println("Service단 갱신된 ShopNum 확인 : " + shopNum);
      
      shopImg = shopCommand.getShopImg();
      
      System.out.println("Service 값 : "+ shopImg);
      shopOriginalFile = shopImg.getOriginalFilename();
      shopOriginalFileExtension = shopOriginalFile.substring(shopOriginalFile.lastIndexOf("."));
      shopStoredFileName = UUID.randomUUID().toString().replaceAll("-","") + shopOriginalFileExtension;
      System.out.println("storedfilename : "+shopStoredFileName);
      file = new File(fullPath+shopStoredFileName);
      shopImg.transferTo(file);
      shopCommand.setShopReg(Calendar.getInstance().getTime());
      System.out.println(shopCommand.getShopReg()); // 코드 실행
      memberId = shopCommand.setMemberId(writer);

    	  
     try {
		shop = new Shop(
				shopNum,shopCommand.getShopName(),shopCommand.getShopType(),
				shopCommand.getShopPost(),shopCommand.getShopAddr(),shopCommand.getShopAddr2(),
				shopCommand.getShopMonth(),shopCommand.getShopStartTime(),shopCommand.getShopEndTime(),
				shopCommand.getShopLentType(),shopCommand.getShopDetail(),shopCommand.getShopDeposit(),
				shopCommand.getShopLentPay(),shopCommand.getShopReadCount(),shopCommand.getShopReg(),
				shopCommand.getShopPermission(),memberId,shopOriginalFile,shopStoredFileName
				);
	} catch (Exception e) {
		// TODO: handle exception
	}
      

      return shareRepository.insertShop(shop);
      
   }

   public Integer insertGoods(GoodsCommand goodsCommand, HttpSession session, HttpServletRequest request) throws IOException {
      
      long goodsNum = shareRepository.selectGoodsNum();
      String writer = (String) session.getAttribute("memberId");
      System.out.println("Service단 기존 GoodsNum 확인 : " + goodsNum);
      
      if (goodsNum == 0) {
         goodsNum = (long) 1;
      } else {
         goodsNum = goodsNum + 1;
      }      
      System.out.println("Service단 변경 GoodsNum 확인 : " + goodsNum);
      
      String pathSet = request.getSession().getServletContext().getRealPath("");
      System.out.println("uppath : "+pathSet);
      String fullPath = pathSet+"WEB-INF/image/";
      System.out.println("fullpath:"+fullPath);
      
      goodsImg = goodsCommand.getGoodsImg();
      goodsOriginalFile = goodsImg.getOriginalFilename();
      
      System.out.println("service"+goodsImg);
      
      goodsOriginalFileExtension = goodsOriginalFile.substring(goodsOriginalFile.lastIndexOf("."));
      goodsStoredFileName = UUID.randomUUID().toString().replaceAll("-","")+goodsOriginalFileExtension;
      file = new File(fullPath+goodsStoredFileName);
            
      goodsImg.transferTo(file);
      goodsCommand.setGoodsReg(Calendar.getInstance().getTime());
      
      System.out.println("Service단 갱신된 goodsNum 확인 : " + goodsNum);
      memberId = goodsCommand.setMemberId(writer);
      
      try {
    	  goods = new Goods(
    			  goodsNum,goodsCommand.getMemberId(),goodsCommand.getGoodsName(),
    			  goodsCommand.getGoodsAmount(),goodsCommand.getGoodsPrice(),goodsCommand.getGoodsDetail(),
    			  goodsCommand.getGoodsReadCount(),goodsCommand.getGoodsReg(),
    			  goodsCommand.getGoodsPermission(),goodsOriginalFile,goodsStoredFileName
    			  );
    			  
      }catch (Exception e) {
		// TODO: handle exception
	}

      return shareRepository.insertGoods(goods);
   
   }

   public List<Shop> timeSharing(Criteria2 cri) {
	   
	   System.out.println("service timeSharingList");
	   System.out.println("service : 출력될 화면의 전체 페이지 갯수");
	   
	return shareRepository.selectTimeSharingList(cri);
   }

   public Shop selectTimeSharingDetail(Long shopNum) {
	// TODO Auto-generated method stub
	   System.out.println("service :" + shopNum);
	
	return shareRepository.selectTimeSharingDetail(shopNum);
	
	}

   public int listCountCriteria(Criteria2 cri) {
	   System.out.println("service : " + cri.getPage());
	return shareRepository.listCountCriteria(cri);
}


public List<Shop> saleList(Criteria2 cri) {
	// TODO Auto-generated method stub
	return shareRepository.saleList(cri);
}

public int saleCountCriteria(Criteria2 cri) {
	// TODO Auto-generated method stub
	return shareRepository.saleCountCriteria(cri);
}

public Goods saleListDetail(Long goodsNum) {
	// TODO Auto-generated method stub
	System.out.println("saleList Detail"+goodsNum);
	
	return shareRepository.saleListDetail(goodsNum);
}
   

}
   /*
   
   @Autowired
   private ShareSessionRepository commentRepository;
   
   public Integer insertShop(Shop shop) {
      
      System.out.println("service "+shop.getShopNum());
   
      return commentRepository.insertShop(shop);

   }

   public List<Comment> selectCommentByCondition(Comment comment){
      System.out.println("service "+comment.getCommentNo());
      return commentRepository.selectCommentByCondition(comment);
   }
   
   public Integer updateComment(Comment comment) {
      System.out.println("service "+comment.getCommentNo());
      return commentRepository.updateComment(comment);
   }
   
   public Integer deleteComment(Comment comment) {
      System.out.println("service "+comment.getCommentNo());
      return commentRepository.deleteComment(comment.getCommentNo());
   }
   
   public void ajaxSelect(HttpServletRequest request, Model model) {
      Long result = Long.parseLong(request.getParameter("n"));
      System.out.println("service "+result);
      List list = commentRepository.ajaxSelect(result);
      model.addAttribute("list", list);
      model.addAttribute("result", result);
   }
   
   public void memberSelect(Member member, Model model) {
      System.out.println("service "+member.getMemberId());
      Member mb = commentRepository.memberSelect(member);
      int result = 0;
      if(mb != null) {
         if(!mb.getMemberPwd().equals(member.getMemberPwd())) {
            result = 2;
         }else {
            result = 3;
         }
      }else {
         result = 1;
      }
      System.out.println("result "+result);
      model.addAttribute("num", result);
      
   }
   
   public void dominoSelectA(Model model) {
      List<Acat> list = commentRepository.acatSelect();
      model.addAttribute("list", list);
   }
   
   public void dominoSelectB(Acat acat, Model model) {
      System.out.println("service:dominoSelectB "+acat.getAnum());
      List<Bcat> list = commentRepository.bcatSelect(acat);
      model.addAttribute("list", list);
   }
   
   public void dominoSelectC(Bcat bcat, Model model) {
      System.out.println("service:dominoSelectC "+bcat.getBnum());
      List<Ccat> list = commentRepository.ccatSelect(bcat);
      model.addAttribute("list", list);
   }

}
*/