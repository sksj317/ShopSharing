package service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.CustomCommand;
import command.MenuTestResultCommand;
import command.SurveyCommand;
import model.Member;
import model.Shop;
import repository.StatisticsRepository;


@Service
public class StatisticsService {
   
   @Autowired
   private StatisticsRepository statisticsRepository;
   @Autowired
   private MenuTestResultCommand menuTestResultCommand;
   @Autowired
   private Member member; 
   
   public List<CustomCommand> selectCustomerSurvey(CustomCommand customCommand) {
	   
	   System.out.println("Service단 OK ID :"+customCommand.getMemberId());
	   List<CustomCommand> customerSurveys = statisticsRepository.selectCustomSurveyById(customCommand);
	   return customerSurveys;
   
   }

   public MenuTestResultCommand calculateCustomerSurveyAverage(List<CustomCommand> customerSurveys) {
	   
	   Double SatiSum = 0.0;
	   Double QuanSum = 0.0;
	   Double PriceSum = 0.0;
	   Double TasteSum = 0.0;
	   Double VisitSum = 0.0;
	   //String[] customCommentList = null; 코멘트도 담아서 보내는 것 시도
	   
	   for(int i =0 ; i < customerSurveys.size() ; i++) {
		
		   SatiSum += customerSurveys.get(i).getSatiStar();
		   QuanSum += customerSurveys.get(i).getQuanStar();
		   PriceSum += customerSurveys.get(i).getPriceStar();
		   TasteSum += customerSurveys.get(i).getTasteStar();
		   VisitSum += customerSurveys.get(i).getVisitStar();
       //customCommentList[i] = customerSurveys.get(i).getCustomComment(); 
	   
	   }
	   
	   menuTestResultCommand.setSatiStarAver(SatiSum/customerSurveys.size());
	   menuTestResultCommand.setQuanStarAver(QuanSum/customerSurveys.size());
	   menuTestResultCommand.setPriceStarAver(PriceSum/customerSurveys.size());
	   menuTestResultCommand.setTasteStarAver(TasteSum/customerSurveys.size());
	   menuTestResultCommand.setVisitStarAver(VisitSum/customerSurveys.size());
	  // menuTestResultCommand.setCustomCommentList(customCommentList);
	   
	   return menuTestResultCommand;
   }

   public List<SurveyCommand> getCustomerVoice() {
	
	   List<SurveyCommand> surveyCommand = statisticsRepository.getCustomerVoice();
	   return surveyCommand;
   
   }

   
   public Integer updateMemberGradeFromProvider(SurveyCommand surveyCommand) {
	
	   //contractPartnerId를 가져오기 위한 코드
	   String contractPartnerId = statisticsRepository.selectContractPartnerIdFromProvider(surveyCommand); 
	   
	   // memberPointAver(회원평점 평균), 회원타입을 저장하기 위한 코드
	   Double mutualPoint = surveyCommand.getMutualStar();
	   String memberType = surveyCommand.getMemberType();
	   member.setMemberId(contractPartnerId);
	   member.setMemberPoint(mutualPoint);
	   member.setMemberType(memberType);
	   statisticsRepository.updateMemberPointAverType(member); 
	   
	   Integer result = statisticsRepository.updateMemberGrade(contractPartnerId);
	   
	   return result;
   }

   public Integer updateMemberGradeFromLender(SurveyCommand surveyCommand) {
	   
	   String contractPartnerId = null;
	   
	   if(surveyCommand.getMemberType().equals("점포 제공자")) {
	      contractPartnerId = statisticsRepository.selectContractPartnerIdFromLender(surveyCommand); 
	   }else if(surveyCommand.getMemberType().equals("상품 제공자")) {
		  contractPartnerId = statisticsRepository.selectContractPartnerIdFromConsign(surveyCommand); 
	   }
	   
	   Double mutualPoint = surveyCommand.getMutualStar();
	   String memberType = surveyCommand.getMemberType();
	   member.setMemberId(contractPartnerId);
	   member.setMemberPoint(mutualPoint);
	   member.setMemberType(memberType);
	   statisticsRepository.updateMemberPointAverType(member); 
	   
	   Integer result = statisticsRepository.updateMemberGrade(contractPartnerId);
	   
	   return result;
   }

   public List<Member> getTopFiveSharerRanking() {
	
	   List<Member> member = statisticsRepository.getTopFiveSharerRanking();
	   return member;
   
   }

   public List<Shop> getTopFivePopularStores() {
	
	   List<Shop> shop = statisticsRepository.getTopFivePopularStores();
	   return shop;
   
   }

   public Member selectMemberInChart(String memberId) {
	
	   Member member = statisticsRepository.selectMemberInChart(memberId);
	   return member;
   
   }

   public Integer isNotNullCon(String id) {
	   
	   return statisticsRepository.isNotNullCon(id);
   
   }

   public Integer isNotNullConFromLender(String id) {
	
	   return statisticsRepository.isNotNullConFromLender(id);
   
   }
   
   public Integer isNotNullConsignCon(String id) {
		
	   return statisticsRepository.isNotNullConsignCon(id);
   
   }

}