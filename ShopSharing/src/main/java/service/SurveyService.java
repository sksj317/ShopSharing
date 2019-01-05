package service;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.SurveyCommand;
import repository.SurveyRepository;

@Service
public class SurveyService {
   
   @Autowired
   private SurveyRepository surveyRepository;
   
   public Integer insertShopSurvey(SurveyCommand surveyCommand) {
      
      System.out.println("service단 OK! 서비스 점수 : " + surveyCommand.getServiceStar());
      Long surveyNum = surveyRepository.selectSharingSurveyNum();
      System.out.println("service단 Surveynum 초기번호 : "+surveyNum);
      
      if(surveyNum==null) {
         surveyNum = (long)1;
      }else {
         surveyNum = surveyNum+1;
      }
      
      System.out.println("service단 Surveynum 갱신버젼 : "+surveyNum);
      surveyCommand.setSurveyNum(surveyNum);
      
      surveyCommand.setSurveyDate(Calendar.getInstance().getTime());
      Integer result = surveyRepository.insertSharingSurvey(surveyCommand);
      return result;
      
   }
   
}