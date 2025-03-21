package com.entity.view;

import com.entity.RexiaoshangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 热销商品
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
@TableName("rexiaoshangpin")
public class RexiaoshangpinView  extends RexiaoshangpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public RexiaoshangpinView(){
	}
 
 	public RexiaoshangpinView(RexiaoshangpinEntity rexiaoshangpinEntity){
 	try {
			BeanUtils.copyProperties(this, rexiaoshangpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
