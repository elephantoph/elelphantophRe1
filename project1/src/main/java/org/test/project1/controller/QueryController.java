package org.test.project1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.test.project1.domain.QueryVo;
import org.test.project1.service.QueryService;

@Controller
public class QueryController {

	@Autowired
	private QueryService queryService;
	
	//제품상세페이지에 querySeq 순으로 제품문의 나열
	@RequestMapping(value="/query/queryList")
	public String querySelectAll(Model model) {
		List<QueryVo> queryList = queryService.querySelectAll();
		model.addAttribute("queryList", queryList);
		return "/query/queryList";
	}
	
	//고객이 로그인 상태일 때 제품문의 나열
	@RequestMapping(value="/query/queryListById")
	public String querySelectById(Model model) {
		String cusId = "centauri272";
		List<QueryVo> queryList = queryService.querySelectById(cusId);
		model.addAttribute("queryList", queryList);
		return "/query/queryListById";
	}
	
	//제품 상세페이지에서 제품문의글 등록 페이지로 이동
	@GetMapping("/query/write")
	public String insertPage(Model model) {
		String prodId = "234234";
		String cusId = "centauri272";
		model.addAttribute("prodId", prodId);
		model.addAttribute("cusId", cusId);
		return "/query/write";
	}
	
	//제품문의글 등록
	@PostMapping("/query/write")
	public String insert(QueryVo queryVo) {
		queryService.queryInsert(queryVo);
		return "redirect:/query/queryList";
	}
	
	//고객 ID 별로 조회한 경우 버튼 클릭시 진입
	@RequestMapping(value="/query/queryListById/{querySeq}")
	public String read(@PathVariable int querySeq, Model model) {
		QueryVo queryVo = queryService.querySelectOne(querySeq);
		model.addAttribute("queryVo", queryVo);
		return "/query/read";
	}
	
	//query 수정 페이지로 이동
	@RequestMapping(value="/query/queryListByID/edit/{querySeq}", method=RequestMethod.GET)
	public String queryEditPage(@PathVariable int querySeq, Model model) {
		QueryVo queryVo = queryService.querySelectOne(querySeq);
		model.addAttribute("queryVo", queryVo);
		System.out.println("edit 페이지 진입: " + queryVo);
		
		return "/query/edit";
	}
	
	//query 수정 요청 버튼
	@PostMapping("/query/queryListByID/edit")
	public String queryEdit(QueryVo queryVo) {
		queryService.queryUpdate(queryVo);
		System.out.println("edit post 요청: 업데이트 queryVo 정보: " +queryVo);
		return "redirect:/query/queryListById";
	}
	
	//삭제
	@GetMapping("/query/queryListById/delete/{querySeq}")
	public String delete(@PathVariable int querySeq) {
		queryService.queryDelete(querySeq);
		return "redirect:/query/queryListById";
	}

}
