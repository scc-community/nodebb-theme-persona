<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="row manager-codemodule">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="clearfix">
					<button id="createCodemodule" class="btn btn-primary pull-right">新建模块</button>
				</div>
				<br />
				<div class="table-responsive">
					<table class="table table-striped codemodules-table">
						<thead>
							<tr>
								<th>模块ID</th>
								<th>名称</th>
								<th>奖励码力</th>
								<th>要求时间</th>
								<th>发布时间</th>
								<th>模块状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN codeModules -->
							<tr class="codemodule-row">
								<td>{codeModules.id}</td>
								<td>{codeModules.title}</td>
								<td>{codeModules.scc}</td>
								<td>{codeModules.delivery_deadline}</td>
								<td>{codeModules.date_published}</td>
								<td>{codeModules.status_text}</td>
								<td><a component="codemodule/edit" href="{config.relative_path}/task/module/detail?cmid={codeModules.id}">编辑</a></td>
							</tr>
							<!-- END codeModules -->
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
