package com.entity.view;

import com.entity.ShangjiaxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 商家信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
@TableName("shangjiaxinxi")
public class ShangjiaxinxiView  extends ShangjiaxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShangjiaxinxiView(){
	}
 
 	public ShangjiaxinxiView(ShangjiaxinxiEntity shangjiaxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, shangjiaxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
