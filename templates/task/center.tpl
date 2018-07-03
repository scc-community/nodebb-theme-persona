<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<!-- IF !isMyTask -->
<nav class="navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#task-navbar" aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="task-navbar">
      <ul class="nav navbar-nav">
		<li class="current"><a>任务列表</a></li>
		<li class="link"><a href="/category/2/tasks-center-任务大厅">帖子</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="right link"><a href="#">检测工具</a></li>
		<li class="right link"><a href="/task/mytask">我的任务</a></li>
		<!-- IF canManageProject -->
		<li class="right link"><a href="/task/project">项目管理</a></li>
		<!-- ENDIF canManageProject -->
		<!-- IF canManageModule -->
		<li class="right link"><a href="/task/module">模块管理</a></li>
		<!-- ENDIF canManageModule -->
      </ul>
    </div>
  </div>
</nav>
<!-- ENDIF isMyTask -->
<div class="row tasks">
	<!-- BEGIN codeModules -->
	<div class="col-sm-6 task-card">
		<div class="small-round right">
			<div class="row first-row">
				<div class="col-sm-8">
					<p class="title"><a href="/task/mytask/detail?codeModuleId={../id}">{../title}</a></p>
				</div>
				<div class="col-sm-2 scc">
					<p>{../scc}码力</p>
				</div>
				<div class="col-sm-2">
					<p class="status">{../status_text}</p>
				</div>
			</div>
			<div class="row second-row">
				<div class="col-sm-12">
					<ul>
						<!-- BEGIN codeModules.languages -->
						<li class="language">{codeModules.languages}</li>
						<!-- END codeModules.languages -->
					</ul>
				</div>
			</div>
			<div class="row three-row">
				<div class="col-sm-3">
					<p>发布人:{../userslug}</p>
				</div>
				<div class="col-sm-5">
					<p>交付截止日期:{../delivery_deadline_text}</p>
				</div>
				<div class="col-sm-4">
					<p>发布日期:{../date_cutoff_text}</p>
				</div>
			</div>
		</div>
	</div>
	<!-- END codeModules -->
</div>
<div class="row">
	<div class="center <!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<!-- IF config.usePagination -->
			<!-- IMPORT partials/paginator.tpl -->
		<!-- ENDIF config.usePagination -->
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
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

