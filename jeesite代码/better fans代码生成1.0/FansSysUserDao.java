/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.fans.user.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.fans.user.entity.FansSysUser;

/**
 * 用户个人信息DAO接口
 * @author 苗苗
 * @version 2019-02-23
 */
@MyBatisDao
public interface FansSysUserDao extends CrudDao<FansSysUser> {
	
}