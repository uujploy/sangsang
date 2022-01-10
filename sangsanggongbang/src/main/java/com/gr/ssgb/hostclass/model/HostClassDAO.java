package com.gr.ssgb.hostclass.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HostClassDAO {
	List<CategoryVO> selectCategoryAll();
	int insertLocation(LocationVO locationVo);
	int insertClass(HostClassVO hostClassVo);
	int insertContents(ContentsVO contentsVo);
	List<LocationVO> selectBylocation(LocationVO locationVo);
	int selectByLNo(LocationVO locationVo);
	int selectByCNo(HostClassVO hostClassVo);
	List<HostClassVO> selectClassAll();
	String selectThumbnail(int cNo);
	List<Map<String,Object>> selectClassAllContents();
	List<Map<String,Object>> selectClassbyCNo(int cNo);
	HostClassVO selectClassbyCNo2(int cNo);
	List<Map<String,Object>> selectClassCategory(String categoryName);
	int updateBylocation(LocationVO locationVo);
	int updateByClass(HostClassVO hostClassVo);
	int updateByContents(ContentsVO contentsVo);
	int deleteContents(int cNo);
	int deleteClass(int cNo);
}
