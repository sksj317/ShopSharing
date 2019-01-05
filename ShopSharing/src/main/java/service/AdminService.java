package service;

import java.io.IOException;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.AdminCommand;
import model.SQna;
import repository.AdminSessionRepository;

@Service
public class AdminService {
	@Autowired
	private AdminSessionRepository adminRepository;
	
	public List<AdminCommand> notPmList(){
		System.out.println("service");
		return adminRepository.selectNotPermissionPost();
	}

	public Integer shopPermission(Long s) {
		System.out.println("service : "+s);
		return adminRepository.permissionUpdateShop(s);
	}

	public Integer goodsPermission(Long g) {
		System.out.println("service : "+g);
		return adminRepository.permissionUpdateGoods(g);
	}

	public Long shopDeny(Long s) {
		System.out.println("service"+s);
		return adminRepository.denyDeleteShop(s);
	}

	public Long goodsDeny(Long g) {
		System.out.println("service : "+g);
		return adminRepository.denyDeleteGoods(g);
	}

	public List<SQna> sQnaList() {
		System.out.println("service");
		return adminRepository.sQnaList();
	}

	public Integer insertQna(SQna sQna) throws IOException{
		long qnaNum = adminRepository.selectQnaNum();
	      
	      System.out.println("Service, qnaNum : " + qnaNum);
	      
	      if (qnaNum == 0) {
	         qnaNum = (long) 1;
	      } else {
	         qnaNum = qnaNum + 1;
	      }
	      
	      System.out.println("Service, after qnaNum : " + qnaNum);
	      	      
	      sQna.setsQnaReg(Calendar.getInstance().getTime());
	      try {
	    	  sQna = new SQna(sQna.getMemberId(), qnaNum, sQna.getsQnaReg(),sQna.getsQnaSub(), sQna.getsQnaDetail());
	    		  
	      }catch (Exception e) {
	    	  
		}

	      return adminRepository.insertQna(sQna);
	}

	public Integer postCnt() {
		Integer postCnt = adminRepository.shopPostCnt()+adminRepository.goodsPostCnt();
		System.out.println("service postCnt : "+postCnt);
		return postCnt;
	}

	public Integer todayMbrCnt() {
		System.out.println("service tMbrCnt : "+adminRepository.todayMbrCnt());
		return adminRepository.todayMbrCnt();
	}

	public Integer qnaCnt() {
		System.out.println("service qnaCnt : "+adminRepository.qnaCnt());
		return adminRepository.qnaCnt();
	}

	public Integer contractCnt() {
		Integer contractCnt = adminRepository.shareContractCnt()+adminRepository.consignContractCnt();
		System.out.println("service contractCnt : "+contractCnt);
		return contractCnt;
	}
}
