package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshangjiaxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshangjiaxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshangjiaxinxiView;


/**
 * 商家信息评论表
 *
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
public interface DiscussshangjiaxinxiService extends IService<DiscussshangjiaxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshangjiaxinxiVO> selectListVO(Wrapper<DiscussshangjiaxinxiEntity> wrapper);
   	
   	DiscussshangjiaxinxiVO selectVO(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
   	
   	List<DiscussshangjiaxinxiView> selectListView(Wrapper<DiscussshangjiaxinxiEntity> wrapper);
   	
   	DiscussshangjiaxinxiView selectView(@Param("ew") Wrapper<DiscussshangjiaxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshangjiaxinxiEntity> wrapper);
   	
}

