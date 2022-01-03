package com.gr.ssgb.member.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	int insertMember(MemberVO vo);
	int insertSnsMember(MemberVO memberVo);
	String checkIdPwd(String mId);
	int updateAdditionalInfo(MemberVO vo);
	int updateAdditionalSns(MemberVO vo);
	int selectMemberCnt(String mId);
	int selectMno(String getmId);
	int insertPayment(PaymentVO paymentVo);
	MemberVO selectMemberById(String mId);
	PaymentVO selectBasicPayment(int getmNo);

}
