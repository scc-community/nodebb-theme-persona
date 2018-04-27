{isSpider}
		</div><!-- END container -->
	</main>

	<footer id="customSCCfooter" class="footer-wrap p16 hidden">
	<div>
	    <div class="footerFont row1 center"><a style="cursor:pointer" href="https://sourcecc.io"><img class="scc-logo" src="{config.relative_path}/assets/images/cover-default.png"></div><h4>Source Code Chain</h4></a></div>
		<p id="donateETH" class="footerFont " style="cursor:pointer">[[admin/manage/categories:donateETH]]: 0x85db0c54146cc45c5f25e6da6ea6a4b93696c935</p>
		<p class="footerFont f-12">SCCAI TECHNOLOGY FOUNDATION © All rights reserved</p>
	</div>
	</footer>

	<!-- IF !isSpider -->
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->


	<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	<!-- BEGIN scripts -->
	<script defer type="text/javascript" src="{scripts.src}"></script>
	<!-- END scripts -->

	<script>
		window.addEventListener('load', function () {
			require(['forum/footer']);

			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>
</body>
</html>
