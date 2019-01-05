package service;


import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.ConsignConCommand;
import command.ShareConCommand;
import command.ShareReqCommand;
import model.Consignment;
import model.ShareCon;
import model.ShareReq;
import repository.ContractRepository;

@Service
public class ContractService {
	@Autowired
	private ContractRepository contractRepository;
	
	ShareReq shareReq;
	ShareCon shareCon;
	
	public Integer insertContract(ShareReqCommand shareReqCommand) {
		// TODO Auto-generated method stub
/*		SimpleDateFormat ShareReqStartPeriod = new SimpleDateFormat("yyyy-MM-dd");
		String startPeriod = ShareReqStartPeriod.format(shareReqCommand.getShareReqStartPeriod());
		System.out.println("a : "+startPeriod);
		SimpleDateFormat getShareReqEndPeriod = new SimpleDateFormat("yyyy-MM-dd");
		String endPeriod = getShareReqEndPeriod.format(shareReqCommand.getShareReqEndPeriod());*/

		long ShareReqNum = contractRepository.selectShareReqNum();

		System.out.println("service 기존 ShareReqNum : "+ShareReqNum);
		if(ShareReqNum == 0) {
			ShareReqNum = 1;
		}else {
			ShareReqNum = ShareReqNum+1;
		}
		System.out.println("service 변경  ShareReqNum : "+ShareReqNum);
		shareReqCommand.setShareReqApplyDay(Calendar.getInstance().getTime());
		try {
			shareReq = new ShareReq(
					ShareReqNum,shareReqCommand.getMemberId(),shareReqCommand.getShopNum(),
					shareReqCommand.getMemberId2(),shareReqCommand.getShareReqApplyDay(),
					shareReqCommand.getShareReqContent(),shareReqCommand.getShareReqStartPeriod(),
					shareReqCommand.getShareReqEndPeriod(),shareReqCommand.getShareReqStartTime(),
					shareReqCommand.getShareReqEndTime(),shareReqCommand.getShopName()
					);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return contractRepository.insertContract(shareReq);
	}

	public ShareReq contractSelect(ShareReq shareReq) {
		System.out.println("contractSelect"+shareReq);
		// TODO Auto-generated method stub
		return contractRepository.contractSelect(shareReq);
	}

	public Integer contractInteger(ShareConCommand shareConCommand) {
		
		long shareConNum = contractRepository.selectShareConNum();
		
		System.out.println("service 기존 ShareReqNum : "+shareConNum);
		if(shareConNum == 0) {
			shareConNum = 1;
		}else {
			shareConNum = shareConNum+1;
		}
		System.out.println("service 변경  ShareReqNum : "+shareConNum);
		shareConCommand.setShareConConclusion(Calendar.getInstance().getTime());
		try {
			shareCon = new ShareCon(
					shareConNum,shareConCommand.getShareReqNum(),shareConCommand.getMemberId(),
					shareConCommand.getShopNum(),shareConCommand.getMemberId2(),
					shareConCommand.getShareConConclusion(),shareConCommand.getShareConStart(),
					shareConCommand.getShareConExp(),shareConCommand.getShareConLentPay(),
					shareConCommand.getShareConDeposit(),shareConCommand.getShareBankName(),
					shareConCommand.getShopName()
					);
		}catch (Exception e) {
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		return contractRepository.contractInteger(shareCon);
	}

	public Consignment consignConSelect(Consignment consignment) {
		System.out.println("consignConSelect"+consignment);
		return contractRepository.consignConSelect(consignment);
	}

	public Integer consignConInsert(ConsignConCommand consignConCommand) {
		long consignConNum = contractRepository.selectConsignConNum();
		
		System.out.println("service 기존 consignConNum : "+consignConNum);
		if(consignConNum == 0) {
			consignConNum = 1;
		}else {
			consignConNum = consignConNum+1;
		}
		System.out.println("service 변경  consignConNum : "+consignConNum);
		consignConCommand.setConsignConNum(consignConNum);
		consignConCommand.setConsignConConclusion(Calendar.getInstance().getTime());
		
		return contractRepository.consignConInsert(consignConCommand);
	}
	
	
}
