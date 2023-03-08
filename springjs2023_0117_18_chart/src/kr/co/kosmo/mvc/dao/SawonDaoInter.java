package kr.co.kosmo.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.co.kosmo.mvc.vo.DeptVO;
import kr.co.kosmo.mvc.vo.SawonVO;

public interface SawonDaoInter {
	//deptlist
	//DeptVO�� �޾Ƶ� �ȿ� List �����Ƿ� mapper�� ���� ���� �� O
	public DeptVO getDeptList(int num);	
	
	//sawonPhone
	//SawonVO�� �޾Ƶ� sawon_phone ���� �� O
	public List<SawonVO> getSawonPhoneList();
	
	public List<HashMap> procedureList(int num);
	public void procedureAdd(SawonVO vo);
}
