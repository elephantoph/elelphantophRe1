package org.test.project1.persistance;

import java.util.List;

import org.test.project1.domain.QueryVo;

public interface QueryDao {

	public List<QueryVo> querySelectAll();
	public List<QueryVo> querySelectById(String cusId);
	public QueryVo querySelectOne(int querySeq);
	public void queryInsert(QueryVo queryVo);
	public void queryUpdate(QueryVo queryVo);
	public void queryDelete(int querySeq);
}
