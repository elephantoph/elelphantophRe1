package org.test.project1.persistance;

import java.util.List;

import org.test.project1.commons.Criteria;
import org.test.project1.commons.SearchCriteria;
import org.test.project1.domain.ReviewVo;

public interface ReviewDao {
	
	public List<ReviewVo> reviewSelectAll();
	public ReviewVo reviewSelectOne(int seq);
	public void reviewInsert(ReviewVo reviewVo);
	public void reviewUpdate(ReviewVo reviewVo);
	public void reviewDelete(int seq);
	
	//게시물 목록 paging, search 기능 적용하여 조회
	public List<ReviewVo> reviewListPage(SearchCriteria scri) throws Exception;
	//게시물 총 갯수
	public int reviewListCount(SearchCriteria scri) throws Exception;
		

}
