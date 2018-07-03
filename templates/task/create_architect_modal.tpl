<div class="alert alert-danger hide" id="create-architect-modal-error"></div>
<form>
	<div class="form-group hidden">
		<label for="group-name">UID</label>
		<input type="text" class="form-control" id="create-architect-uid" <!-- IF architectUId -->value="{architectUId}" <!-- ENDIF architectUId -->/>
	</div>
	<div class="row">
		<div class="col-xs-6">
			<div class="form-group">
				<label for="group-name">[[admin/scc-reward/manual-reward:title.username]]</label>
				<input type="text" class="form-control" id="create-architect-username" placeholder="[[admin/scc-reward/manual-reward:input.search-user]]" 
				<!-- IF architectUserName -->value="{architectUId}" <!-- ENDIF architectUserName -->/>
			</div>
		</div>
		<div class="col-xs-6">
			<div class="form-group">
				<label for="length">奖励码力</label>
				<input class="form-control" id="create-architect-scc" type="number" min="0" 
				<!-- IF architectScc -->value="{architectScc}"<!-- ELSE -->value="1"<!-- ENDIF architectScc -->/>
			</div>
		</div>
	</div>
	<div class="form-group">
		<label for="group-name">工作内容</label>
		<input type="text" class="form-control" id="create-architect-workDesc" 
		<!-- IF architectWorkDesc -->value="{architectWorkDesc}" <!-- ENDIF architectWorkDesc -->/>
	</div>
</form>
