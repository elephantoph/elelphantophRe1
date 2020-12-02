package org.test.project1.persistance;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.test.project1.commons.Criteria;
import org.test.project1.commons.SearchCriteria;
import org.test.project1.domain.PagingVO;
import org.test.project1.domain.ReviewVo;

@Repository
public class ReviewDaoImpl implements ReviewDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<ReviewVo> reviewSelectAll() {
		return sqlSessionTemplate.selectList("ReviewDao.reviewSelectAll");
	}

	@Override
	public ReviewVo reviewSelectOne(int seq) {
		return sqlSessionTemplate.selectOne("ReviewDao.reviewSelectOne", seq);
	}

	@Override
	public void reviewInsert(ReviewVo reviewVo) {
		sqlSessionTemplate.insert("ReviewDao.reviewInsert", reviewVo);
	}

	@Override
	public void reviewUpdate(ReviewVo reviewVo) {
		sqlSessionTemplate.update("ReviewDao.reviewUpdate", reviewVo);
	}

	@Override
	public void reviewDelete(int seq) {
		sqlSessionTemplate.delete("ReviewDao.reviewDelete", seq);
	}

	@Override
	public List<ReviewVo> reviewListPage(SearchCriteria scri) throws Exception {
		return sqlSessionTemplate.selectList("ReviewDao.reviewListPage", scri);
	}

	@Override
	public int reviewListCount(SearchCriteria scri) throws Exception {
		return sqlSessionTemplate.selectOne("ReviewDao.reviewListCount", scri);
	}

}
