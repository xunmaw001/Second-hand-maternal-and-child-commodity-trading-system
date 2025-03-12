package com.entity.model;

import com.entity.RexiaoshangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 热销商品
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-01-24 21:51:17
 */
public class RexiaoshangpinModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 分类
	 */
	
	private String fenlei;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 适用性别
	 */
	
	private String shiyongxingbie;
		
	/**
	 * 适用阶段
	 */
	
	private String shiyongjieduan;
		
	/**
	 * 商品成色
	 */
	
	private String shangpinchengse;
		
	/**
	 * 商品规格
	 */
	
	private String shangpinguige;
		
	/**
	 * 商品品牌
	 */
	
	private String shangpinpinpai;
		
	/**
	 * 商家编号
	 */
	
	private String shangjiabianhao;
		
	/**
	 * 商家名称
	 */
	
	private String shangjiamingcheng;
		
	/**
	 * 咨询电话
	 */
	
	private String zixundianhua;
		
	/**
	 * 商品详情
	 */
	
	private String shangpinxiangqing;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
		
	/**
	 * 价格
	 */
	
	private Float price;
				
	
	/**
	 * 设置：分类
	 */
	 
	public void setFenlei(String fenlei) {
		this.fenlei = fenlei;
	}
	
	/**
	 * 获取：分类
	 */
	public String getFenlei() {
		return fenlei;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：适用性别
	 */
	 
	public void setShiyongxingbie(String shiyongxingbie) {
		this.shiyongxingbie = shiyongxingbie;
	}
	
	/**
	 * 获取：适用性别
	 */
	public String getShiyongxingbie() {
		return shiyongxingbie;
	}
				
	
	/**
	 * 设置：适用阶段
	 */
	 
	public void setShiyongjieduan(String shiyongjieduan) {
		this.shiyongjieduan = shiyongjieduan;
	}
	
	/**
	 * 获取：适用阶段
	 */
	public String getShiyongjieduan() {
		return shiyongjieduan;
	}
				
	
	/**
	 * 设置：商品成色
	 */
	 
	public void setShangpinchengse(String shangpinchengse) {
		this.shangpinchengse = shangpinchengse;
	}
	
	/**
	 * 获取：商品成色
	 */
	public String getShangpinchengse() {
		return shangpinchengse;
	}
				
	
	/**
	 * 设置：商品规格
	 */
	 
	public void setShangpinguige(String shangpinguige) {
		this.shangpinguige = shangpinguige;
	}
	
	/**
	 * 获取：商品规格
	 */
	public String getShangpinguige() {
		return shangpinguige;
	}
				
	
	/**
	 * 设置：商品品牌
	 */
	 
	public void setShangpinpinpai(String shangpinpinpai) {
		this.shangpinpinpai = shangpinpinpai;
	}
	
	/**
	 * 获取：商品品牌
	 */
	public String getShangpinpinpai() {
		return shangpinpinpai;
	}
				
	
	/**
	 * 设置：商家编号
	 */
	 
	public void setShangjiabianhao(String shangjiabianhao) {
		this.shangjiabianhao = shangjiabianhao;
	}
	
	/**
	 * 获取：商家编号
	 */
	public String getShangjiabianhao() {
		return shangjiabianhao;
	}
				
	
	/**
	 * 设置：商家名称
	 */
	 
	public void setShangjiamingcheng(String shangjiamingcheng) {
		this.shangjiamingcheng = shangjiamingcheng;
	}
	
	/**
	 * 获取：商家名称
	 */
	public String getShangjiamingcheng() {
		return shangjiamingcheng;
	}
				
	
	/**
	 * 设置：咨询电话
	 */
	 
	public void setZixundianhua(String zixundianhua) {
		this.zixundianhua = zixundianhua;
	}
	
	/**
	 * 获取：咨询电话
	 */
	public String getZixundianhua() {
		return zixundianhua;
	}
				
	
	/**
	 * 设置：商品详情
	 */
	 
	public void setShangpinxiangqing(String shangpinxiangqing) {
		this.shangpinxiangqing = shangpinxiangqing;
	}
	
	/**
	 * 获取：商品详情
	 */
	public String getShangpinxiangqing() {
		return shangpinxiangqing;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}
