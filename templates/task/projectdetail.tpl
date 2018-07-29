<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="alert alert-danger hide" id="project-detail-error"></div>
<form data-project-id="{project.id}">
	<div class="form-group">
		<label for="group-name">名称</label>
		<input id="project-title" type="text" class="form-control" <!-- IF project --> value="{project.title}"<!-- ENDIF project -->/>
	</div>
	<div class="row">
		<div class="col-xs-6">
			<div class="form-group">
				<label for="group-name">状态</label>
				<select class="form-control" id="project-status">
					<!-- BEGIN statuses -->
					<option value="{statuses.value}" <!-- IF statuses.selected -->selected<!-- ENDIF statuses.selected -->>{statuses.text}</option>
					<!-- END statuses -->
				</select>
			</div>
		</div>
		<div class="col-xs-6">
			<div class="form-group">
				<label class="group-name" for="project-deliveryDeadline">交付截止日期</label>
				<input id="project-deliveryDeadline" class="form-control" readonly="readonly" <!-- IF project --> value="{project.delivery_deadline}"<!-- ENDIF project --> />
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="group-name">描述</label>
		<input id="project-description" type="text" class="form-control" <!-- IF project --> value="{project.description}"<!-- ENDIF project -->/>
	</div>
</form>

<!-- IF project -->
<div class="row manager-codeModule">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div data-codemodule-title="包括模块" class="panel-heading">包括模块({project.codemodule_count})</div>
			<div class="panel-body">
				<div class="clearfix">
					<button id="createCodeModule" class="btn btn-primary pull-right" data-action="newCodeModule">添加模块</button>
				</div>
				<div class="table-responsive">
					<table component="codemodule" class="table table-striped codeModules-table">
						<thead>
							<tr>
								<th>模块ID</th>
								<th>名称</th>
								<th>模块奖励</th>
								<th>状态</th>
								<th>领取人</th>
								<th>项目奖励</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN codeModules -->
							<tr data-id="{codeModules.id}" class="codeModules-row">
								<td>{codeModules.cm_id}</td>
								<td>{codeModules.cm_title}</a></td>
								<td>{codeModules.cm_scc}</td>
								<td>{codeModules.status_text}</td>
								<td>{codeModules.accept_username}</td>
								<td>{codeModules.project_cm_scc}</td>
								<td><a data-action="deleteCodeModule" href="#">移除</a></td>
							</tr>
							<!-- END codeModules -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row manager-projectArchitects">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div data-projectarchitect-title="架构师奖励" class="panel-heading">架构师奖励({project.architect_count})</div>
			<div class="panel-body">
				<div class="clearfix">
					<button id="createArchitect" class="btn btn-primary pull-right" data-action="newArchitect">添加架构师</button>
				</div>
				<div class="table-responsive">
					<table component="projectArchitect" class="table table-striped projectArchitects-table">
						<thead>
							<tr>
								<th>ID</th>
								<th>用户ID</th>
								<th>用户名称</th>
								<th>工作内容</th>
								<th>奖励</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN projectArchitects -->
							<tr data-id="{projectArchitects.id}" class="projectArchitect-row">
								<td>{projectArchitects.id}</td>
								<td>{projectArchitects.architect_uid}</td>
								<td>{projectArchitects.userslug}</td>
								<td>{projectArchitects.work_desc}</a></td>
								<td>{projectArchitects.scc}</td>
								<td>
									<a data-action="saveArchitect" href="#">编辑</a>|
									<a data-action="deleteArchitect" href="#">移除</a>
								</td>
							</tr>
							<!-- END projectArchitects -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ENDIF project -->

<div class="clearfix" component="buttons">
	<button id="return" class="btn btn-default pull-right">返回</button>
	<!-- IF project -->
	<!-- IF !projectStatusIsBalanced -->
	<button data-action="deleteProject" class="btn btn-primary pull-right">删除项目</button>
	<button data-action="cutoffProject" class="btn btn-primary pull-right">项目结算</button>
	<!-- ENDIF !projectStatusIsBalanced -->
	<button data-action="downloadFile" class="btn btn-primary pull-right">一键下载</button>
	<!-- IF !projectStatusIsBalanced -->
	<button data-action="saveProject" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF !projectStatusIsBalanced -->
	<!-- ELSE -->
	<button data-action="newProject" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF project -->
</div>

<div class="row">
	<div widget-area="sidebar" class="col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div widget-area="footer">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>