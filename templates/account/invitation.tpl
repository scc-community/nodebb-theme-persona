<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="profile row">
		<h1 class="fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></h1>
	    <div id="invite-link" data-clipboard-text="{invitelink}"></div>
		<!-- IF isAdminOrGlobalModeratorOrModerator -->
		<!-- IF banned -->
		<div class="text-center">
		<!-- IF banned_until -->
		[[user:info.banned-until, {banned_until_readable}]]
		<!-- ELSE -->
		[[user:info.banned-permanently]]
		<!-- ENDIF banned_until -->
		</div>
		<!-- ENDIF banned -->
		<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->

		<!-- IF selectedGroup.slug -->
		<div class="text-center">
			<a href="{config.relative_path}/groups/{selectedGroup.slug}"><small class="label group-label inline-block" style="background-color: {selectedGroup.labelColor};"><!-- IF selectedGroup.icon --><i class="fa {selectedGroup.icon}"></i> <!-- ENDIF selectedGroup.icon -->{selectedGroup.userTitle}</small></a>
		</div>
		<br/>
		<!-- ENDIF selectedGroup.slug -->

		<!-- IF aboutme -->
		<span component="aboutme" class="text-center aboutme">{aboutme}</span>
		<!-- ENDIF aboutme -->

		<div class="account-stats">
			<!-- IF !reputation:disabled -->
			<div class="stat" style="display:none;">
				<div class="human-readable-number" title="{reputation}">{reputation}</div>
				<span class="stat-label">[[global:reputation]]</span>
			</div>
			<!-- ENDIF !reputation:disabled -->

			<div class="stat">
				<div class="human-readable-number" title="{postcount}">{postcount}</div>
				<span class="stat-label">[[global:posts]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
				<span class="stat-label">[[user:profile_views]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number" title="{followerCount}">{followerCount}</div>
				<span class="stat-label">[[user:followers]]</span>
			</div>

			<div class="stat">
				<div class="human-readable-number"  title="{followingCount}">{followingCount}</div>
				<span class="stat-label">[[user:following]]</span>
			</div>

			<!-- IF isSelf -->
			<div class="stat">
				<div class="human-readable-number"  title="{token}">{token}</div>
				<span class="stat-label">[[user:token]]</span>
			</div>
			<!-- ENDIF isSelf -->
		</div>

		<!-- IF isSelf -->
		<div class="text-center invite-component" component="account/invitelink">[[user:invitelink]]</div>
		<!-- ENDIF isSelf -->

		<div class="text-center profile-meta">
			<span>[[user:joined]]</span>
			<strong class="timeago" title="{joindateISO}"></strong>

			<span>[[user:lastonline]]</span>
			<strong class="timeago" title="{lastonlineISO}"></strong><br />

			<!-- IF email -->
			<span>[[user:email]]</span>
			<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</strong>
			<!-- ENDIF email -->

			<!-- IF websiteName -->
			<span>[[user:website]]</span>
			<strong><a href="{websiteLink}" rel="nofollow">{websiteName}</a></strong>
			<!-- ENDIF websiteName -->

			<!-- IF location -->
			<span>[[user:location]]</span>
			<strong>{location}</strong>
			<!-- ENDIF location -->

			<!-- IF age -->
			<span>[[user:age]]</span>
			<strong>{age}</strong>
			<!-- ENDIF age -->
		</div>
	</div>

</div>
