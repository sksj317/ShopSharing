package service;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.CustomCommand;
import repository.CustomRepository;

@Service
public class CustomService {
	
	@Autowired
	private CustomRepository customRepository;

	public Integer insertCustomSurvey(CustomCommand customCommand) {
	
		System.out.println("service단 OK! 만족도 점수 : " + customCommand.getSatiStar());
		
		Long surveyNum = customRepository.selectCustomSurveyNum();
		System.out.println("service단 CustomSurveyNum 초기번호 : "+surveyNum);
		if(surveyNum==null) {
			surveyNum = (long)1;
		}else {
			surveyNum = surveyNum+1;
		}
		System.out.println("service단 CustomSurveyNum 갱신버젼 : "+surveyNum);
		
		
		customCommand.setCsurveyNum(surveyNum);
		customCommand.setCustomDate(Calendar.getInstance().getTime());
		Integer result = customRepository.insertCustomSurvey(customCommand);
		return result;

	}

}
