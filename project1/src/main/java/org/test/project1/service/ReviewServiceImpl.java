package org.test.project1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.test.project1.commons.Criteria;
import org.test.project1.commons.SearchCriteria;
import org.test.project1.domain.PagingVO;
import org.test.project1.domain.ReviewVo;
import org.test.project1.persistance.ReviewDao;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDao reviewDao;
	
	@Override
	public List<ReviewVo> reviewSelectAll() {
		return reviewDao.reviewSelectAll();
	}

	@Override
	public ReviewVo reviewSelectOne(int seq) {
		return reviewDao.reviewSelectOne(seq);
	}

	@Override
	public void reviewInsert(ReviewVo reviewVo) {
		reviewDao.reviewInsert(reviewVo);
	}

	@Override
	public void reviewUpdate(ReviewVo reviewVo) {
		reviewDao.reviewUpdate(reviewVo);
	}

	@Override
	public void reviewDelete(int seq) {
		reviewDao.reviewDelete(seq);
	}

	@Override
	public List<ReviewVo> reviewListPage(SearchCriteria scri) throws Exception {
		return reviewDao.reviewListPage(scri);
	}

	@Override
	public int reviewListCount(SearchCriteria scri) throws Exception {
		return reviewDao.reviewListCount(scri);
	}
	
}
