<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="alert alert-danger hide" id="codemodule-detail-error"></div>
<form class="module-detail" data-codemodule-id="{codemodule.id}">
	<div class="form-group">
		<label for="group-name">名称</label>
		<input id="codemodule-title" type="text" class="form-control" <!-- IF codemodule --> value="{codemodule.title}"<!-- ENDIF codemodule -->/>
	</div>
	<div class="row">
		<div class="col-xs-6">
			<div class="form-group">
				<label class="group-name" for="codemodule-language">要求语言</label>
				<div class="language-area">
				<!-- BEGIN codemodule.dev_language -->
					<div class="card pull-left" data-text="{codemodule.dev_language.text}">
						<a href="#">{codemodule.dev_language.text}</a>
						<i class="remove-icon fa fa-times" role="button"></i>
					</div>
				<!-- END codemodule.dev_language -->
				</div>
				<input id="language-search" class="form-control" placeholder="选择语言" value="请选择" readonly="readonly"/>
			</div>
		</div>
		<div class="col-xs-6">
			<div class="form-group">
				<label class="group-name" for="codemodule-app">对象</label>
				<div class="app-area">
				<!-- BEGIN codemodule.app -->
					<div class="card pull-left" data-text="{codemodule.app.text}">
						<a href="#">{codemodule.app.text}</a>
						<i class="remove-icon fa fa-times" role="button"></i>
					</div>
				<!-- END codemodule.app -->
				</div>
				<input id="app-search" class="form-control" placeholder="选择对象" value="请选择" readonly="readonly"/>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-6">
				<div class="form-group">
					<label for="group-name">码力奖励</label>
					<input id="codemodule-scc" type="number" class="form-control" min="0"<!-- IF codemodule --> value="{codemodule.scc}"<!-- ENDIF codemodule -->/>
				</div>
		</div>
		<div class="col-xs-6">
			<div class="form-group">
				<label for="group-name">状态</label>
				<select class="form-control" id="codemodule-status">
					<!-- BEGIN statusOptions -->
					<option value="{statusOptions.value}" <!-- IF statusOptions.selected -->selected<!-- ENDIF statusOptions.selected -->>{statusOptions.text}</option>
					<!-- END statusOptions -->
				</select>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-6">
			<div class="form-group">
				<label class="group-name" for="codemodule-acceptuid">领取人</label>
				<input id="codemodule-acceptuid" class="form-control" data-uid="{codemodule.accept_uid}" data-selected="0"<!-- IF codemodule --> value="{codemodule.accept_userslug}"<!-- ENDIF codemodule -->/>
			</div>
		</div>
		<div class="col-xs-6">
			<div class="form-group">
				<label class="group-name" for="codemodule-deliveryDeadline">交付截止日期</label>
				<input id="codemodule-deliveryDeadline" class="form-control" readonly="readonly" <!-- IF codemodule --> value="{codemodule.delivery_deadline}"<!-- ENDIF codemodule --> />
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="group-name">模块要求描述</label>
		<input id="codemodule-requirementdesc" type="text" class="form-control" <!-- IF codemodule --> value="{codemodule.requirement_desc}"<!-- ENDIF codemodule -->/>
	</div>
	<div class="form-group">
		<label for="group-name">其它说明</label>
		<input id="codemodule-memo" type="text" class="form-control" <!-- IF codemodule --> value="{codemodule.memo}"<!-- ENDIF codemodule -->/>
	</div>
</form>

<div class="clearfix" component="buttons">
	<button id="return" class="btn btn-default pull-right">返回</button>
	<!-- IF codemodule -->
	<!-- IF statuses.draft -->
	<button data-action="deleteModuleTask" class="btn btn-primary pull-right">删除模块</button>
	<button data-action="publishModuleTask" class="btn btn-primary pull-right">发布</button>
	<button data-action="saveModuleTask" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF statuses.draft -->

	<!-- IF statuses.published -->
	<button data-action="deleteModuleTask" class="btn btn-primary pull-right">删除模块</button>
	<button data-action="endModuleTask" class="btn btn-primary pull-right">结束任务</button>
	<button data-action="saveModuleTask" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF statuses.published -->

	<!-- IF statuses.developing -->
	<button data-action="deleteModuleTask" class="btn btn-primary pull-right">删除模块</button>
	<button data-action="endModuleTask" class="btn btn-primary pull-right">结束任务</button>
	<button data-action="saveModuleTask" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF statuses.developing -->

	<!-- IF statuses.submited -->
	<button data-action="deleteModuleTask" class="btn btn-primary pull-right">删除模块</button>
	<button data-action="endModuleTask" class="btn btn-primary pull-right">结束任务</button>
	<button data-action="cutoffModuleTask" class="btn btn-primary pull-right">进行结算</button>
	<button data-action="unSubmitModuleTask" class="btn btn-primary pull-right">提交不合格</button>
	<button data-action="downloadFile" class="btn btn-primary pull-right">下载文件</button>
	<button data-action="saveModuleTask" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF statuses.submited -->

	<!-- IF statuses.balanced -->
	<button data-action="downloadFile" class="btn btn-primary pull-right">下载文件</button>
	<!-- ENDIF statuses.balanced -->

	<!-- IF statuses.closed -->
	<button data-action="downloadFile" class="btn btn-primary pull-right">下载文件</button>
	<!-- ENDIF statuses.closed -->
	<!-- ELSE -->
	<button data-action="newModuleTask" publish="1" class="btn btn-primary pull-right">直接发布</button>
	<button data-action="newModuleTask" class="btn btn-primary pull-right">保存</button>
	<!-- ENDIF codemodule -->
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