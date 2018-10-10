package kr.or.ddit.db;

import java.util.List;

import kr.or.ddit.user.model.JSPUserVO;

public class TempService {
	TempDao dao = new TempDao();
	
	public List<JSPUserVO> selectUserAll(){
		return dao.selectUserAll();
	}
}
