package com.gr.ssgb.order.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderDAO {
	int insertOrder(OrderVO vo);
	int insertOrderDetail(OrderVO vo);
	List<Map<String, Object>> selectOrderDetailsView(int orderNo);
	Map<String, Object> selectOrdersView(int orderNo);
	/*
	List<OrderAllVO> selectOrderAll(DateSearchVO dateSearchVo);
	int selectTotalRecord(DateSearchVO dateSearchVo);
	
	*/
	
}