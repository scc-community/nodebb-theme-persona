<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	<!-- BEGIN widgets.header -->
	{{widgets.header.html}}
	<!-- END widgets.header -->
</div>
<div class="row">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
		<h1 class="categories-title">[[pages:categories]]</h1>
		<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
			<!-- BEGIN categories -->
			<!-- IMPORT partials/categories/item.tpl -->
			<!-- END categories -->
		</ul>
	</div>
	<div widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		<!-- BEGIN widgets.sidebar -->
		{{widgets.sidebar.html}}
		<!-- END widgets.sidebar -->
	</div>
</div>
<div widget-area="footer" style="min-height: calc(100vh - 3em);">
	<!-- BEGIN widgets.footer -->
	{{widgets.footer.html}}
	<!-- END widgets.footer -->
</div>

<footer class="navbar navbar-fixed-bottom row1 between footerBg p16">
	<div class="row1">
		<a class="footerFont" href="https://sourcecc.io">Source Code Chain</a>
	</div>
	<div>
		<p id="donateETH" class="footerFont" style="cursor:pointer">Donate ETH: 0x85db0c54146cc45c5f25e6da6ea6a4b93696c935</p>
		<p class="footerFont">SCCAI TECHNOLOGY FOUNDATION © All rights reserved</p>
	</div>
</footer>
