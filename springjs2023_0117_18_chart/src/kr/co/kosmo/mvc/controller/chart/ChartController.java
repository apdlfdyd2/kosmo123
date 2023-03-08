package kr.co.kosmo.mvc.controller.chart;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller // »ý·« X
@RequestMapping(value = "/chart")
public class ChartController {
	
	@GetMapping(value="/jsonstudent")
	public ModelAndView myHello() {
		ModelAndView mav = new ModelAndView("chart/jsonstudent");
		return mav;
	}
	
	@GetMapping(value="/listJsonDemo")
	public ModelAndView myHello3() {
		ModelAndView mav = new ModelAndView("chart/listJsonDemo");
		return mav;
	}
	
	
	@RequestMapping(value="/donutchart")
	public ModelAndView myHello2() {
		ModelAndView mav = new ModelAndView("chart/donutchart");
		return mav;
	}

	@GetMapping(value = "/deptJsonDemo")
	public String deptJson() {
		return "chart/deptJsonDemo";
	}
	@GetMapping(value = "/surveydonutchartaJax")
	public String chart3() {
		return "chart/surveydonutchartaJax";
	}
}
