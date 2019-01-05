package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.ConsignCon;
import model.Consignment;
import model.ShareCon;
import model.ShareReq;
import repository.RequestRepository;

@Service
public class RequestService {
	@Autowired
	private RequestRepository requestRepository;
		
	public List<ShareReq> mySendShareReqList(String memberId2) {
		System.out.println("service, send share : "+memberId2);
		return requestRepository.mySendShareReqList(memberId2);
	}

	public List<Consignment> mySendConsignmentList(String memberId2) {
		System.out.println("service, send consign : "+memberId2);
		return requestRepository.mySendConsignmentList(memberId2);
	}

	public List<ShareReq> myShareReqList(String memberId) {
		System.out.println("service, share req : "+memberId);
		return requestRepository.myShareReqList(memberId);
	}

	public List<Consignment> myConsignmentList(String memberId) {
		System.out.println("service, consign req : "+memberId);
		return requestRepository.myConReqList(memberId);
	}

	public Integer shareReqPermission(Long shareReqNum) {
		return requestRepository.shareReqPermission(shareReqNum);
	}

	public Integer shareReqDeny(Long shareReqNum) {
		return requestRepository.shareReqDeny(shareReqNum);
	}

	public Integer consignmentPermission(Long consignmentNum) {
		return requestRepository.consignmentPermission(consignmentNum);
	}

	public Integer consignmentDeny(Long consignmentNum) {
		return requestRepository.consignmentDeny(consignmentNum);
	}

	public List<ConsignCon> myConsignConList(String memberId) {
		return requestRepository.myConsignConList(memberId);
	}

	public List<ShareCon> myShareConList(String memberId) {
		return requestRepository.myShareConList(memberId);
	}

}
