package org.test.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.test.project1.domain.QueryVo;
import org.test.project1.persistance.QueryDao;

@Service
public class QueryServiceImpl implements QueryService {

	@Autowired
	private QueryDao queryDao;

	@Override
	public List<QueryVo> querySelectAll() {
		return queryDao.querySelectAll();
	}

	@Override
	public List<QueryVo> querySelectById(String cusId) {
		return queryDao.querySelectById(cusId);
	}

	@Override
	public QueryVo querySelectOne(int querySeq) {
		return queryDao.querySelectOne(querySeq);
	}

	@Override
	public void queryInsert(QueryVo queryVo) {
		queryDao.queryInsert(queryVo);
	}

	@Override
	public void queryUpdate(QueryVo queryVo) {
		queryDao.queryUpdate(queryVo);
	}

	@Override
	public void queryDelete(int querySeq) {
		queryDao.queryDelete(querySeq);
	}
	

}
