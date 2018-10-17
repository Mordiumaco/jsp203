package kr.or.ddit.prod.service;

import java.util.List;

import kr.or.ddit.prod.dao.ProdDao;
import kr.or.ddit.prod.dao.ProdDaoInf;
import kr.or.ddit.prod.vo.ProdVO;
import kr.or.ddit.util.model.PageVo;

public class ProdService implements ProdServiceInf{
	
	ProdDaoInf dao;
	
	public ProdService() {
		dao = new ProdDao();
	}

	@Override
	public List<ProdVO> selectUserForPage(PageVo page) {
		
		return dao.selectUserForPage(page);
	}

	@Override
	public List<ProdVO> selectUserAll() {
		return dao.selectUserAll();
	}
	
	
}
