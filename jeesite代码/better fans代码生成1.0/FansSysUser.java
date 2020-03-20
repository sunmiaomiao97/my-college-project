/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.fans.user.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户个人信息Entity
 * @author 苗苗
 * @version 2019-02-23
 */
public class FansSysUser extends DataEntity<FansSysUser> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 登录名
	private String password;		// 录密码登
	private String pic;		// 头像
	private String signature;		// 个人签名
	private String sex;		// 性别
	private Date birTime;		// 出生年月
	private Date beginBirTime;		// 开始 出生年月
	private Date endBirTime;		// 结束 出生年月
	
	public FansSysUser() {
		super();
	}

	public FansSysUser(String id){
		super(id);
	}

	@Length(min=1, max=100, message="登录名长度必须介于 1 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=1, max=100, message="录密码登长度必须介于 1 和 100 之间")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Length(min=0, max=200, message="头像长度必须介于 0 和 200 之间")
	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}
	
	@Length(min=0, max=255, message="个人签名长度必须介于 0 和 255 之间")
	public String getSignature() {
		return signature;
	}

	public void setSignature(String signature) {
		this.signature = signature;
	}
	
	@Length(min=0, max=2, message="性别长度必须介于 0 和 2 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@NotNull(message="出生年月不能为空")
	public Date getBirTime() {
		return birTime;
	}

	public void setBirTime(Date birTime) {
		this.birTime = birTime;
	}
	
	public Date getBeginBirTime() {
		return beginBirTime;
	}

	public void setBeginBirTime(Date beginBirTime) {
		this.beginBirTime = beginBirTime;
	}
	
	public Date getEndBirTime() {
		return endBirTime;
	}

	public void setEndBirTime(Date endBirTime) {
		this.endBirTime = endBirTime;
	}
		
}