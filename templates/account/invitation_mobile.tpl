<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<style>
			* {
				margin: 0;
				padding: 0;
			}
			html,body {
				height: 100%;
			}
		</style>
		
		<title>admin | SourceCC</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="content-type" content="text/html; charset=UTF-8" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="mobile-web-app-capable" content="yes" />
		<meta property="og:site_name" content="SourceCC" />
		<meta name="msapplication-badge" content="frequency=30; polling-uri=http://localhost:4567/sitemap.xml" />
		<meta name="title" content="admin" />
		<meta name="description" />
		<meta property="og:title" content="admin" />
		<meta property="og:description" />
		<meta property="og:url" content="http://localhost:4567/user/admin/invitation?mobile&#x3D;1" />
		
		<link rel="stylesheet" type="text/css" href="/assets/stylesheet.css?v=jf2ob54qhn8" />
		
		<link rel="icon" type="image/x-icon" href="/favicon.ico?v=jf2ob54qhn8" />
		<link rel="manifest" href="/manifest.json" />
		<link rel="prefetch" href="/assets/src/modules/composer.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/uploads.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/drafts.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/tags.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/categoryList.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/resize.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/src/modules/composer/autocomplete.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/templates/composer.tpl?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/language/zh-CN/topic.json?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/language/zh-CN/modules.json?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/language/zh-CN/tags.json?v=jf2ob54qhn8" />
		<link rel="prefetch stylesheet" href="/plugins/nodebb-plugin-markdown/styles/railscasts.css" />
		<link rel="prefetch" href="/assets/src/modules/highlight.js?v=jf2ob54qhn8" />
		<link rel="prefetch" href="/assets/language/zh-CN/markdown.json?v=jf2ob54qhn8" />
		<link rel="stylesheet" href="/plugins/nodebb-plugin-emoji/emoji/styles.css?v=jf2ob54qhn8" />
		<script>
			var RELATIVE_PATH = "";
			var config = JSON.parse('{"relative_path":"","siteTitle":"SourceCC","browserTitle":"SourceCC","titleLayout":"&#123;pageTitle&#125; | &#123;browserTitle&#125;","showSiteTitle":true,"minimumTitleLength":"3","maximumTitleLength":"255","minimumPostLength":"8","maximumPostLength":"32767","minimumTagsPerTopic":0,"maximumTagsPerTopic":5,"minimumTagLength":"3","maximumTagLength":"15","useOutgoingLinksPage":false,"allowGuestSearching":false,"allowGuestUserSearching":false,"allowGuestHandles":false,"allowFileUploads":false,"allowTopicsThumbnail":false,"usePagination":false,"disableChat":false,"disableChatMessageEditing":false,"socketioTransports":["polling","websocket"],"websocketAddress":"","maxReconnectionAttempts":5,"reconnectionDelay":1500,"topicsPerPage":20,"postsPerPage":20,"maximumFileSize":"2048","theme:id":"nodebb-theme-scc","theme:src":"","defaultLang":"zh-CN","userLang":"zh-CN","loggedIn":false,"cache-buster":"v=jf2ob54qhn8","requireEmailConfirmation":true,"topicPostSort":"oldest_to_newest","categoryTopicSort":"newest_to_oldest","csrf_token":"x34AT87c-s0Zr2TR8Ski6pO16kbGTG2NMMAo","searchEnabled":false,"bootswatchSkin":"noskin","defaultBootswatchSkin":"noskin","timeagoCutoff":30,"cookies":{"enabled":false,"message":"[[global:cookies.message]]","dismiss":"[[global:cookies.accept]]","link":"[[global:cookies.learn_more]]"},"topicSearchEnabled":false,"delayImageLoading":true,"composer-default":{},"markdown":{"highlight":1,"theme":"railscasts.css"},"hideSubCategories":false,"hideCategoryLastPost":false,"enableQuickReply":false}');
			var app = {
				template: "account/invitation_mobile",
				user: JSON.parse('{"uid":0,"username":"游客","userslug":"","fullname":"游客","email":"","picture":"","status":"offline","reputation":0,"email:confirmed":false,"isAdmin":false,"isGlobalMod":false,"isMod":false,"privileges":{"chat":false,"upload:post:image":false,"upload:post:file":false},"isEmailConfirmSent":false}')
			};
		</script>
	</head>
	<body>
		<main class="invite-page">
			<h1>Source Code Chain</h1>
			<p>[[user:invitelink-content1]]</p>
			<section class="invite-card">
				<article>
					<h3>{{username}}[[user:invitelink-mobile-title]]</h3>
					<div class="qrcode-wrap">
						<img src="/create_qrcode?text={invitelink}">
					</div>
					<p>[[user:invitelink-desc]]</p>
				</article>
				<div class="line-wrap">
					<div class="hr-wrap">
						<hr>
					</div>
				</div>
				<article>
					<p>[[user:invitelink-content2]]</p>
					<p>[[user:invitelink-content3]]</p>
				</article>
			</section>
		</main>
	</body>
</html>