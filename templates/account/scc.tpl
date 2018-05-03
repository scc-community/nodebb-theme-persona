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
						<!--<th class="text-right">[[admin/manage/users:users.postcount]]</th>-->
					</tr>
				</thead>
				<tbody>
					<!-- BEGIN users -->
					<tr class="user-row">
						<td class="text-right">{users.scccount}</td>
						<td class="text-right">{users.scccategory}</td>
						<td class="text-right">{users.sccobject}</td>
                        <td class="text-right">{users.scctype}</td>
                        <td class="text-right">{users.scccontent}</td>
						<td><span class="timeago" title="{users.sccISO}"></span></td>
                        <td class="text-right">{users.scctransactionid}</td>
					</tr>
					<!-- END users -->
				</tbody>
			</table>
		</div>

	    <!-- IMPORT partials/paginator.tpl -->
	</div>
</div>
