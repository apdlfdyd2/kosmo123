package kr.co.kosmo.mvc.controller.chart_semi;

import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JacksonInject.Value;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.kosmo.mvc.controller.service.SurveyService;
import kr.co.kosmo.mvc.vo.SurveyContentVO;
import kr.co.kosmo.mvc.vo.SurveyVO;

@RestController
public  class  TourRestChartController {


	@Autowired
	private SurveyService surveyservice;
	
	@RequestMapping(value = "/tourChartJson",produces = "application/json;charset=utf-8" )
	public String busan(int num) {
		SurveyVO vo = surveyservice.adminDetail(num);
		
		String subject = vo.getSub();
		Map<String, Integer> map = new HashedMap();
		
		for (SurveyContentVO e : vo.getSubvey()) {
			map.put(e.getSurveytitle(), e.getSurveycnt());
		}
		String result = null;
		
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			result=mapper.writeValueAsString(map);
		} catch (JsonProcessingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		return result;
	}
}
