<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="row manager-project">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="clearfix">
					<button id="createProject" class="btn btn-primary pull-right">新建项目</button>
				</div>
				<br />
				<div class="table-responsive">
					<table class="table table-striped projects-table">
						<thead>
							<tr>
								<th>项目ID</th>
								<th>名称</th>
								<th>模块数</th>
								<th>发布时间</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN projects -->
							<tr class="project-row">
								<td>{projects.id}</td>
								<td>{projects.title}</td>
								<td>{projects.codemodule_count}</td>
								<td><span class="timeago" title="{projects.date_published}"></span></td>
								<td>{projects.status_text}</td>
								<td><a component="project/edit" href="{config.relative_path}/task/project/detail?pid={projects.id}">编辑</a></td>
							</tr>
							<!-- END projects -->
						</tbody>
					</table>
				</div>

				<!-- IMPORT partials/paginator.tpl -->
			</div>
		</div>
	</div>
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
