<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="profile row">
		<div class="row-xs-6 text-center">
			<img src="/create_qrcode?text={invitelink}"/>
			</div>
			<div class="row-xs-6">
				<div class="form-group text-center" style="">
					<div>{username}[[user:invitelink-label-title, {invitelink}]]</div>
					<div class="text-center" style="margin-top:2em;margin-bottom:1.5em">[[user:invitelink-desc]]</div>
				</div>
			</div>
			<div class="row-xs-6">
				<div style="background-image:url(/images/banner.jpg);background-position:center;padding-bottom:1em;background-size:960px 410px">
					<div class="text-center" style="color:white;font-size:1.2em;padding-top:1em;font-weight:bold">Source Chain Code</div>
					<div class="text-center" style="color:white;font-size:1.1em;margin:1em 1em">[[user:invitelink-content1]]</div>
					<div class="text-left" style="color:white;font-size:1.1em;margin:1em 1.5em">[[user:invitelink-content2]]</div>
					<div class="text-left" style="color:white;font-size:1.1em;margin:1em 1.5em">[[user:invitelink-content3]]</div>
				</div>
			</div>
		</div>
</div>