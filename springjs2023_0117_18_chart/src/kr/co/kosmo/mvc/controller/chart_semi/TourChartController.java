package kr.co.kosmo.mvc.controller.chart_semi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.kosmo.mvc.controller.service.SurveyService;
//
@Controller
@RequestMapping(value = "/tchart")
public class TourChartController {

	@Autowired
	private SurveyService surveyservice;
	
	@GetMapping(value = "/busan")
	public String tourChartBusan() {
		
		return "tourchart/busanchart";
	}
}
