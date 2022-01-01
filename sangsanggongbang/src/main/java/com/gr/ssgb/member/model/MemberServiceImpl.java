package com.gr.ssgb.member.model;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	private final MemberDAO memberDao;
	
	@Autowired
	public MemberServiceImpl(MemberDAO memberDao) {
		super();
		this.memberDao = memberDao;
	}
	@Override
	public int insertMember(MemberVO vo) {
		return memberDao.insertMember(vo);
	}

	@Override
	public int insertSnsMember(MemberVO memberVo) {
		return memberDao.insertSnsMember(memberVo);
	}
	public int checkIdPwd(String mId, String pwd) {
		int result=0;
		String dbPwd = memberDao.checkIdPwd(mId);
		if(dbPwd==null || dbPwd.isEmpty()){ 
			result = ID_NONE;
		}else{ 
			if(pwd.equals(dbPwd)){ 
				result = LOGIN_OK;
			}else{ 
				result = PWD_DISAGREE;
			}
		}
		return result;
	}
	@Override
	public int updateAdditionalInfo(MemberVO vo) {
		return memberDao.updateAdditionalInfo(vo);
	}
	@Override
	public int updateAdditionalSns(MemberVO vo) {
		return memberDao.updateAdditionalSns(vo);
	}
	@Override
	public int selectMemberCnt(String mId) {
		return memberDao.selectMemberCnt(mId);
	}
	@Override
	public int selectMno(String getmId) {
		return memberDao.selectMno(getmId);
	}
	@Override
	public int insertPayment(PaymentVO paymentVo) {
		return memberDao.insertPayment(paymentVo);
	}
	@Override
	public MemberVO selectMemberById(String mId) {
		return memberDao.selectMemberById(mId);
	}
	@Override
	public PaymentVO selectBasicPayment(int getmNo) {
		return memberDao.selectBasicPayment(getmNo);
	}
	public int duplicateId(String mId)	{
		int count=memberDao.selectMemberCnt(mId);
		
		int result=0;
		if(count>0) {  
			result=EXIST_ID;
		}else {
			result=NON_EXIST_ID;			
		}
		
		return result;
	}
	
}