<solicitudpension-add>
	<page id="solicitudpension-add" title="Agregar SolicitudPensions">
		<formbox title="Datos del SolicitudPension" icon="fa fa-check-circle-o" action="create" return="solicitudPension-admin">
			<div class="row">
			<div class="col-md-12">		
			<inputbox id="numero" type="number" pattern="[0-9]" onkeypress="return event.charCode >= 48 && event.charCode <= 57" label="Numero" value="" placeholder="Numero del SolicitudPension" required=true disabled=false minsize=3 maxsize=100 />
			</div>
			</div>
			
			<div class="row">
			<div class="col-md-12">
						
			<label class="control-label">Afiliado</label>
			</div>
			</div>
			
			<div class="row">
			<div class="col-md-12">
			<div class="form-group">
			<!-- Modal -->
			<search-box id="searchboxsample" link="Afiliadomodal" caption="Afiliado" placeholder="Afiliado" />
			<modal-box id="Afiliadomodal"  data="afiliado-results" title="Seleccionar Afiliado " action="select-multi" pagination="true"/>
					    </div>
				        </div>
				        </div>
			
			<div class="row">
			<div class="col-md-12">
						
			<label class="control-label">TipoPension</label>
			</div>
			</div>
			
			<div class="row">
			<div class="col-md-12">
			<div class="form-group">
			<!-- Modal -->
			<search-box id="searchboxsample" link="TipoPensionmodal" caption="TipoPension" placeholder="TipoPension" />
			<modal-box id="TipoPensionmodal"  data="tipopension-results" title="Seleccionar TipoPension " action="select-multi" pagination="true"/>
					    </div>
				        </div>
				        </div>
		</formbox>
	</page>
</solicitudpension-add>	
