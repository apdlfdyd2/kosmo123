package kr.co.kosmo.mvc.controller.chart;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import freemarker.template.SimpleDate;
import kr.co.kosmo.mvc.dao.MemberDaoInter;
import kr.co.kosmo.mvc.vo.MemberDTO;

//@Controller -> 스프링 컨테이너가 Model로 선택해서
//현재 시스템에서는InternalREsourceViewResolver를 통해서 지정한
//view로 forward 방식으로 이동한다
//@RestController -> CustomView를 사용해서 지정한 View 즉, 
//JSP를 사용하지 않고 데이터를 응답할 수 있기 때문에
//주로 JSON으로 response 할 때 주로 사용함
//@RestController : json과 같은 데이터를 서비스하기 위한 컨트롤러이다.

@RestController
//@Controller 메시지 파일 [/WEB-INF/views/안녕하세요.jsp]을(를) 찾을 수 없습니다.
public class ChartRestController {
	@Autowired
	private MemberDaoInter memberdaointer;
//해당 요청이 오면 가상 View에다가 반환받은 값을 전달해서 응답 처리를 해준다.
	//produces = "text/html;charset=euc-kr"
	@RequestMapping(value = "helloView",produces = "text/html;charset=euc-kr")
	public String viewMessage() {
		return "안녕하세요";
	}
	// Json Object Type-> javascript Object
	
	@RequestMapping(value = "/listJsonDemo",produces = "application/json;charset=utf-8")
	public List<MemberDTO> listJsonDemo(){
		List<MemberDTO> list = memberdaointer.jsonDemoList();
		return list;
	}
	
	@RequestMapping(value = "/deptJsonView1",produces = "application/json;charset=utf-8")
	public MemberDTO jsonObjectDemo1(String id) {

	try {
		System.out.println("컨트롤러id=>"+id);
		MemberDTO vo = memberdaointer.jsonDemo(id);
	
		
		return vo;
	} catch (Exception e) {
		MemberDTO vo = new MemberDTO();
		vo.setName("없음");
		return vo;
	}
		
		
		
		
		
		/*MemberDTO vo = new MemberDTO();
		System.out.println("id =>"+id);
		vo.setName("김길동");
		vo.setNum(1);
		vo.setAge(11);
		vo.setGender("남자");
		vo.setId("bigdaddy");
		vo.setPwd("11");
		vo.setMdate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		//리턴값 : {"num":1,"id":"bigdaddy","pwd":"11","name":"김길동","age":11,"gender":"남자","mdate":"2023-01-18"}
		//Json으로 바인드해줌*/
		//return vo;
	}
	
}
