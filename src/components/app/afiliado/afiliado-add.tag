<afiliado-add>
	<page id="afiliado-add" title="Agregar Afiliados">
		<formbox title="Datos del Afiliado" icon="fa fa-check-circle-o" action="create" return="afiliado-admin">
			<div class="row">
			<div class="col-md-12">	
			
			<inputbox id="nss" type="text" label="NSS" value="" placeholder="Número de Seguridad Social" required=true disabled=false minsize=10
			 maxsize=10
			 />
			</div>
			</div>
			<div class="row">
			<div class="col-md-12">	
			
			<inputbox id="nombre" type="text" label="Nombre(s)" value="" placeholder="Nombre o nombres del Afiliado" required=true disabled=false />
			</div>
			</div>
			<div class="row">
			<div class="col-md-12">	
			
			<inputbox id="apellido_paterno" type="text" label="Apellido Paterno" value="" placeholder="Apellido Paterno del Afiliado" required=true disabled=false />
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
		</formbox>
	</page>
</afiliado-add>	
