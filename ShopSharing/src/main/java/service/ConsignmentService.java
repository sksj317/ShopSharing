package service;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.Consignment;
import repository.ConsignmentRepository;


@Service
public class ConsignmentService {
	
	@Autowired
	private ConsignmentRepository consignmentRepository;
	
/*	SimpleDateFormat ShareReqStartPeriod = new SimpleDateFormat("yyyy-MM-dd");
	String startPeriod = ShareReqStartPeriod.format(shareReqCommand.getShareReqStartPeriod());
	System.out.println("a : "+startPeriod);
	SimpleDateFormat getShareReqEndPeriod = new SimpleDateFormat("yyyy-MM-dd");
	String endPeriod = getShareReqEndPeriod.format(shareReqCommand.getShareReqEndPeriod());      */

	public Long isNotNullShopCheck(String memberId2) {
		
		return consignmentRepository.isNotNullShopCheck(memberId2);
	
	}

	public int consignmentReqInsert(Consignment consignment) {
		
		String shopName = consignment.getShopName();
		Long shopNum = consignmentRepository.getShopNum(shopName);
		
		consignment.setShopNum(shopNum);
		consignment.setConsignmentApplyDay(Calendar.getInstance().getTime());
		
		return consignmentRepository.consignmentReqInsert(consignment);
	}
	
}
