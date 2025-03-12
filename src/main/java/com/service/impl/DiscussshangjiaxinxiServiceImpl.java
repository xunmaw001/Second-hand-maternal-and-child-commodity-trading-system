package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussshangjiaxinxiDao;
import com.entity.DiscussshangjiaxinxiEntity;
import com.service.DiscussshangjiaxinxiService;
import com.entity.vo.DiscussshangjiaxinxiVO;
import com.entity.view.DiscussshangjiaxinxiView;

@Service("discussshangjiaxinxiService")
public class DiscussshangjiaxinxiServiceImpl extends ServiceImpl<DiscussshangjiaxinxiDao, DiscussshangjiaxinxiEntity> implements DiscussshangjiaxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshangjiaxinxiEntity> page = this.selectPage(
                new Query<DiscussshangjiaxinxiEntity>(params).getPage(),
                new EntityWrapper<DiscussshangjiaxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshangjiaxinxiEntity> wrapper) {
		  Page<DiscussshangjiaxinxiView> page =new Query<DiscussshangjiaxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshangjiaxinxiVO> selectListVO(Wrapper<DiscussshangjiaxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshangjiaxinxiVO selectVO(Wrapper<DiscussshangjiaxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshangjiaxinxiView> selectListView(Wrapper<DiscussshangjiaxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshangjiaxinxiView selectView(Wrapper<DiscussshangjiaxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
