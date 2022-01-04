package com.gr.ssgb.qa.model;

import java.util.List;

import com.gr.ssgb.hostclass.model.HostClassVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QaServiceImpl implements QaService{
	
	@Autowired
	private QaDAO qaDao;

	@Override
	public List<QaVO> selectQaAll() { 
		return qaDao.selectQaAll();
	}
	@Override
	public List<HostClassVO> hostClassSelect() {
		return qaDao.hostClassSelect();
	}

	@Transactional
	public int insertQa(QaVO vo) {
		return qaDao.insertQa(vo);
	}

	@Override
	public int updateQa(QaVO vo) {
		return qaDao.updateQa(vo);
	}

	@Override
	public int deleteQa(int qaNo) {
		return qaDao.deleteQa(qaNo);
	}
}
