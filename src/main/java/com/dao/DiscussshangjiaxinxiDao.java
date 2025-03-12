package com.dao;

import com.entity.DiscussshangjiaxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshangjiaxinxiVO;
import com.entity.view.DiscussshangjiaxinxiView;


/**
 * 商家信息评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
public interface DiscussshangjiaxinxiDao extends BaseMapper<DiscussshangjiaxinxiEntity> {
	
	List<DiscussshangjiaxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
	
	DiscussshangjiaxinxiVO selectVO(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
	
	List<DiscussshangjiaxinxiView> selectListView(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);

	List<DiscussshangjiaxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
	
	DiscussshangjiaxinxiView selectView(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
	
}
