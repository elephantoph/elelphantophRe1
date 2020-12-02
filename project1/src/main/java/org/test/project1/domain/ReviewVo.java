package org.test.project1.domain;

import java.util.Date;

public class ReviewVo {

	private int reviewSeq;
	private int poNum;
	private int score;
	private String title;
	private String content;
	private Date regDate;
	
	public ReviewVo() {}
	
	public ReviewVo(int score, String title, String content) {
		super();
		this.score=score;
		this.title=title;
		this.content=content;
	}
	
	public int getReviewSeq() {
		return reviewSeq;
	}
	public void setReviewSeq(int reviewSeq) {
		this.reviewSeq = reviewSeq;
	}
	public int getPoNum() {
		return poNum;
	}
	public void setPoNum(int poNum) {
		this.poNum = poNum;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "ReviewVo [reviewSeq=" + reviewSeq + ", poNum=" + poNum + ", score=" + score + ", title=" + title
				+ ", content=" + content + ", regDate=" + regDate + "]";
	}
	
	
}
