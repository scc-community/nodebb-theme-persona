<div class="row manage-users">
	<div class="col-lg-12">
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
					</tr>
				</thead>
				<tbody>
					<!-- BEGIN txs -->
					<tr class="user-row">
						<td class="text-right">{txs.scc}</td>
						<td class="text-right">{txs.transaction_type}</td>
						<td class="text-right">{txs.publish_uid}</td>
                        <td class="text-right">{txs.reward_type}</td>
                        <td class="text-right">{txs.content}</td>
						<td><span class="timeago" title="{txs.date_issued}"></span></td>
                        <td class="text-right">{txs.tx_no}</td>
					</tr>
					<!-- END txs -->
				</tbody>
			</table>
		</div>

	    <!-- IMPORT partials/paginator.tpl -->
	</div>
</div>
