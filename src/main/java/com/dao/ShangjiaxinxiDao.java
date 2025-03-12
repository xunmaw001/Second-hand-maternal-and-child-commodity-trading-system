package com.dao;

import com.entity.ShangjiaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShangjiaxinxiVO;
import com.entity.view.ShangjiaxinxiView;


/**
 * 商家信息
 * 
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
public interface ShangjiaxinxiDao extends BaseMapper<ShangjiaxinxiEntity> {
	
	List<ShangjiaxinxiVO> selectListVO(@Param("ew") Wrapper<ShangjiaxinxiEntity> wrapper);
	
	ShangjiaxinxiVO selectVO(@Param("ew") Wrapper<ShangjiaxinxiEntity> wrapper);
	
	List<ShangjiaxinxiView> selectListView(@Param("ew") Wrapper<ShangjiaxinxiEntity> wrapper);

	List<ShangjiaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ShangjiaxinxiEntity> wrapper);
	
	ShangjiaxinxiView selectView(@Param("ew") Wrapper<ShangjiaxinxiEntity> wrapper);
	
}
