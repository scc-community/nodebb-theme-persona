<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>

<div class="row task">
	<div class="col-sm-12">
		<div class="col-sm-8">
			<div class="col-sm-12">
				<p class="title">{codeModule.title}</p>
				<ul>
					<!-- BEGIN codeModule.languages -->
					<li>{codeModule.languages}</li>
					<!-- END codeModule.languages -->
				</ul>
			</div>
			<div class="col-sm-12">
				<p class="left-area">发布人:{codeModule.userslug}</p>
				<p class="left-area">交付截止日期:{codeModule.delivery_deadline_text}</p>
				<p class="left-area">发布日期:{codeModule.date_cutoff_text}</p>
			</div>
		</div>
		<div class="col-sm-4 text-center">
			<p class="scc">{codeModule.scc}码力</p>
			<!-- IF status.published -->
			<p class="status published"><a component="acceptTask">等待分配</a></p>
			<!-- ENDIF status.published -->

			<!-- IF status.balanced -->
			<p class="status disable"><a>已结算</a></p>
			<!-- ENDIF status.balanced -->

			<!-- IF status.closed -->
			<p class="status disable"><a>已关闭</a></p>
			<!-- ENDIF status.closed -->

			<!-- IF !isMyTask -->
				<!-- IF status.developing -->
				<p class="status developing"><a>开发中</a></p>
				<!-- ENDIF status.developing -->

				<!-- IF status.submited -->
				<p class="status disable"><a>已完成</a></p>
				<!-- ENDIF status.submited -->
			<!-- ELSE -->
				<!-- IF status.developing -->
				<p component="upload" data-route="{config.relative_path}/api/post/upload" data-url="{codeModule.url}" data-id="{codeModule.id}" data-status="{codeModule.status}" class="status active">
				<a>上传文件</a>
				</p>
				<!-- ENDIF status.developing -->

				<!-- IF status.submited -->
				<p component="upload" data-route="{config.relative_path}/api/post/upload" data-url="{codeModule.url}" data-id="{codeModule.id}" data-status="{codeModule.status}" class="status active">
				<a>重新提交</a>
				</p>
				<!-- ENDIF status.submited -->
			<!-- ENDIF !isMyTask -->

			<!-- IF codeModule.date_upload -->
			<p class="date_upload">最新提交日期:{codeModule.date_upload_text}</p>
			<!-- ENDIF codeModule.date_upload -->
		</div>
	</div>
	<div class="col-sm-12" style="border-top:1px solid;margin-left:30px;margin-right:30px;">
		<p style="margin-top:15px">模块要求</p>
		<p style="margin-top:15px">{codeModule.requirement_desc}</p>
	</div>
</div>
<div class="row">
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
