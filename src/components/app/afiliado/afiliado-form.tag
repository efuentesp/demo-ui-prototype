<afiliado-form>
	<div class="row">
	<div class="col-md-12">	
	
	<inputbox id="nss" type="text" label="NSS" value="" placeholder="Número de Seguridad Social" required=true disabled=true minsize=10
	 maxsize=10
	 />
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">	
	
	<inputbox id="nombre" type="text" label="Nombre(s)" value="" placeholder="Nombre o nombres del Afiliado" required=true disabled=true />
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">	
	
	<inputbox id="apellido_paterno" type="text" label="Apellido Paterno" value="" placeholder="Apellido Paterno del Afiliado" required=true disabled=true />
	</div>
	</div>
	
	
	<div class="row">
	<div class="col-md-12">
				
	<label class="control-label">Beneficiarios</label>
	</div>
	</div>
	
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	<!-- Modal -->
	<search-box id="searchboxsample" link="Beneficiariomodal" caption="Beneficiario" placeholder="Beneficiarios registrados" />
	<modal-box id="Beneficiariomodal"  data="beneficiario-results" title="Seleccionar Beneficiario " action="select-multi" pagination="true"/>
			    </div>
		        </div>
		        </div>
</afiliado-form>	
