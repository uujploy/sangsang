package com.gr.ssgb.paymentList.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaymentListDAO {
	public List<PaymentListVO> selectPaymentListAll();
	
	/*
	public List<BalancingVO> selectAll(SearchVO searchVo);
	public int insertBoard(BalancingVO vo);
	int selectTotalRecord(SearchVO searchVo);
	public BalancingVO selectByNo(int no);
	public int updateReadCount(int no);
	public String selectPwd(int no);	
	public int updateBoard(BalancingVO vo);
	public int deleteBoard(int no);
	*/
}