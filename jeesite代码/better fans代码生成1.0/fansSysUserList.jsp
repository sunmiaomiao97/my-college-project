<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户信息操作成功管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/user/fansSysUser/">用户信息操作成功列表</a></li>
		<shiro:hasPermission name="user:fansSysUser:edit"><li><a href="${ctx}/user/fansSysUser/form">用户信息操作成功添加</a></li></shiro:hasPermission>
	</ul>
	<form:form id="searchForm" modelAttribute="fansSysUser" action="${ctx}/user/fansSysUser/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li><label>登录名：</label>
				<form:input path="name" htmlEscape="false" maxlength="100" class="input-medium"/>
			</li>
			<li><label>性别：</label>
				<form:input path="sex" htmlEscape="false" maxlength="2" class="input-medium"/>
			</li>
			<li><label>出生年月：</label>
				<input name="beginBirTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${fansSysUser.beginBirTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/> - 
				<input name="endBirTime" type="text" readonly="readonly" maxlength="20" class="input-medium Wdate"
					value="<fmt:formatDate value="${fansSysUser.endBirTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"
					onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>登录名</th>
				<th>性别</th>
				<th>出生年月</th>
				<th>更新时间</th>
				<th>备注信息</th>
				<shiro:hasPermission name="user:fansSysUser:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="fansSysUser">
			<tr>
				<td><a href="${ctx}/user/fansSysUser/form?id=${fansSysUser.id}">
					${fansSysUser.id}
				</a></td>
				<td>
					${fansSysUser.name}
				</td>
				<td>
					${fansSysUser.sex}
				</td>
				<td>
					<fmt:formatDate value="${fansSysUser.birTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					<fmt:formatDate value="${fansSysUser.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<td>
					${fansSysUser.remarks}
				</td>
				<shiro:hasPermission name="user:fansSysUser:edit"><td>
    				<a href="${ctx}/user/fansSysUser/form?id=${fansSysUser.id}">修改</a>
					<a href="${ctx}/user/fansSysUser/delete?id=${fansSysUser.id}" onclick="return confirmx('确认要删除该用户信息操作成功吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>