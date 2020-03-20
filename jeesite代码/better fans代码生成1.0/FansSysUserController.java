/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.fans.user.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.fans.user.entity.FansSysUser;
import com.thinkgem.jeesite.fans.user.service.FansSysUserService;

/**
 * 用户个人信息Controller
 * @author 苗苗
 * @version 2019-02-23
 */
@Controller
@RequestMapping(value = "${adminPath}/user/fansSysUser")
public class FansSysUserController extends BaseController {

	@Autowired
	private FansSysUserService fansSysUserService;
	
	@ModelAttribute
	public FansSysUser get(@RequestParam(required=false) String id) {
		FansSysUser entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = fansSysUserService.get(id);
		}
		if (entity == null){
			entity = new FansSysUser();
		}
		return entity;
	}
	
	@RequiresPermissions("user:fansSysUser:view")
	@RequestMapping(value = {"list", ""})
	public String list(FansSysUser fansSysUser, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<FansSysUser> page = fansSysUserService.findPage(new Page<FansSysUser>(request, response), fansSysUser); 
		model.addAttribute("page", page);
		return "fans/user/fansSysUserList";
	}

	@RequiresPermissions("user:fansSysUser:view")
	@RequestMapping(value = "form")
	public String form(FansSysUser fansSysUser, Model model) {
		model.addAttribute("fansSysUser", fansSysUser);
		return "fans/user/fansSysUserForm";
	}

	@RequiresPermissions("user:fansSysUser:edit")
	@RequestMapping(value = "save")
	public String save(FansSysUser fansSysUser, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, fansSysUser)){
			return form(fansSysUser, model);
		}
		fansSysUserService.save(fansSysUser);
		addMessage(redirectAttributes, "保存用户信息操作成功成功");
		return "redirect:"+Global.getAdminPath()+"/user/fansSysUser/?repage";
	}
	
	@RequiresPermissions("user:fansSysUser:edit")
	@RequestMapping(value = "delete")
	public String delete(FansSysUser fansSysUser, RedirectAttributes redirectAttributes) {
		fansSysUserService.delete(fansSysUser);
		addMessage(redirectAttributes, "删除用户信息操作成功成功");
		return "redirect:"+Global.getAdminPath()+"/user/fansSysUser/?repage";
	}

}