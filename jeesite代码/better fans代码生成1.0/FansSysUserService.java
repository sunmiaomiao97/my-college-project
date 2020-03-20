/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.fans.user.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.fans.user.entity.FansSysUser;
import com.thinkgem.jeesite.fans.user.dao.FansSysUserDao;

/**
 * 用户个人信息Service
 * @author 苗苗
 * @version 2019-02-23
 */
@Service
@Transactional(readOnly = true)
public class FansSysUserService extends CrudService<FansSysUserDao, FansSysUser> {

	public FansSysUser get(String id) {
		return super.get(id);
	}
	
	public List<FansSysUser> findList(FansSysUser fansSysUser) {
		return super.findList(fansSysUser);
	}
	
	public Page<FansSysUser> findPage(Page<FansSysUser> page, FansSysUser fansSysUser) {
		return super.findPage(page, fansSysUser);
	}
	
	@Transactional(readOnly = false)
	public void save(FansSysUser fansSysUser) {
		super.save(fansSysUser);
	}
	
	@Transactional(readOnly = false)
	public void delete(FansSysUser fansSysUser) {
		super.delete(fansSysUser);
	}
	
}