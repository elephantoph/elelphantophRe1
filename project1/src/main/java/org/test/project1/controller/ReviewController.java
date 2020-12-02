package org.test.project1.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.test.project1.commons.Criteria;
import org.test.project1.commons.PageMaker;
import org.test.project1.commons.SearchCriteria;
import org.test.project1.domain.CustomerVo;
import org.test.project1.domain.PagingVO;
import org.test.project1.domain.ReviewVo;
import org.test.project1.persistance.ReviewDao;
import org.test.project1.service.ReviewService;

@Controller
//@SessionAttributes("reviewVo")
public class ReviewController {
	
	

	@Autowired
	private ReviewService reviewService;
	

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@RequestMapping(value="/test/shit")
	public String shit() {
		return "/test/shit";
	}
	
	@RequestMapping(value="/test/insert")
	public String insertTestValue() {
		for (int i=1; i<=300; i++) {
			ReviewVo reviewVo = new ReviewVo();
			reviewVo.setScore(5);
			reviewVo.setTitle(i+"번 제목");
			reviewVo.setContent(i+"번 내용");
			reviewVo.setPoNum(i);
			sqlSessionTemplate.insert("ReviewDao.reviewInsert", reviewVo);
		}
		return "/test/insert";
	}
	
	@RequestMapping(value="/review/reviewList")
	public String list(Model model) {
		List<ReviewVo> reviewList = reviewService.reviewSelectAll();
		model.addAttribute("reviewList", reviewList);
		CustomerVo customerVo = new CustomerVo();
		customerVo.setCusId("testId");
		model.addAttribute("customerVo", customerVo);
		return "/review/reviewList";
	}
	
	@RequestMapping(value="/review/reviewListPage")
	public String list(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		
		pageMaker.setTotalCount(reviewService.reviewListCount(scri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("reviewList", reviewService.reviewListPage(scri));
		
		System.out.println(scri.getSearchType());
		System.out.println(scri.getKeyword());
		return "/review/reviewListPage";
	}
	
	
	@RequestMapping(value="/review/orderList")
	public String orderList() {
		return "/review/orderList";
	}
	
	@RequestMapping(value="/review/edit/{reviewSeq}", method=RequestMethod.GET)
	public String editPage(@PathVariable int reviewSeq, Model model) {
		ReviewVo reviewVo = reviewService.reviewSelectOne(reviewSeq);
		model.addAttribute("reviewVo", reviewVo);
		System.out.println(reviewVo);
		return "/review/edit";
	}
	
	@RequestMapping(value="/review/edit", method=RequestMethod.POST)
	public String edit(int reviewSeq, 
			ReviewVo reviewVo) {
		
		System.out.println(reviewSeq);
		System.out.println(reviewVo);
		
		reviewService.reviewUpdate(reviewVo);
		System.out.println(reviewVo);
		return "redirect:/review/orderList";
	}
	
	@RequestMapping(value="/review/delete", method=RequestMethod.POST)
	public String delete(int reviewSeq) {
		reviewService.reviewDelete(reviewSeq);
		return "redirect:/review/orderList";
	}
	
	@RequestMapping(value="/review/write", method=RequestMethod.GET)
	public String writeButton() {
		return "/review/write";
	}
	
	@RequestMapping(value="/review/write", method=RequestMethod.POST)
	public String write(ReviewVo reviewVo) {
		reviewService.reviewInsert(reviewVo);
		return "redirect:/review/orderList";
	}
}
