<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="row">
		<h5>{ownToken}</h5>
		<div class="col-xs-12">
			<div class="table-responsive">
				<table class="table table-striped users-table">
					<thead>
						<tr>
							<th>[[user:scc.count]]</th>
                        	<th>[[user:scc.category]]</th>
                        	<th>[[user:scc.object]]</th>
                        	<th>[[user:scc.type]]</th>
                        	<th>[[user:scc.content]]</th>
                        	<th>[[user:scc.timestamp]]</th>
                        	<th>[[user:scc.transaction-id]]</th>
							<!-- IF memo -->
							<th>[[user:scc.memo]]</th>
							<!-- ENDIF memo -->
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN txs -->
						<tr class="user-row">
							<td class="text-left">{txs.scc}</td>
							<td class="text-left">{txs.transaction_type}</td>
							<td class="text-left">{txs.publish_uid}</td>
                        	<td class="text-left">{txs.reward_type}</td>
                        	<td class="text-left">{txs.content}</td>
							<td><span class="timeago" title="{txs.date_issued}"></span></td>
                        	<td class="text-left">{txs.tx_no}</td>
							<!-- IF memo -->
							<td class="text-left">{txs.memo}</td>
							<!-- ENDIF memo -->
						</tr>
						<!-- END txs -->
					</tbody>
				</table>
			</div>

	    	<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>
