package org.test.project1.persistance;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.test.project1.domain.QueryVo;

@Repository
public class QueryDaoImpl implements QueryDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<QueryVo> querySelectAll() {
		return sqlSessionTemplate.selectList("QueryDao.querySelectAll");
	}

	@Override
	public List<QueryVo> querySelectById(String cusId) {
		return sqlSessionTemplate.selectList("QueryDao.querySelectById", cusId);
	}

	@Override
	public QueryVo querySelectOne(int querySeq) {
		return sqlSessionTemplate.selectOne("QueryDao.querySelectOne", querySeq);
	}

	@Override
	public void queryInsert(QueryVo queryVo) {
		sqlSessionTemplate.insert("QueryDao.queryInsert", queryVo);
		
	}

	@Override
	public void queryUpdate(QueryVo queryVo) {
		sqlSessionTemplate.update("QueryDao.queryUpdate", queryVo);
	}

	@Override
	public void queryDelete(int querySeq) {
		sqlSessionTemplate.delete("QueryDao.queryDelete", querySeq);
	}

}
