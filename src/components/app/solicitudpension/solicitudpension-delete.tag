
<solicitudpension-delete>
	<page id="solicitudpension-delete" title="Eliminar SolicitudPensions">
		<formbox title="Datos del SolicitudPension" icon="fa fa-check-circle-o" action="delete" return="solicitudPension-admin">
			<div class="row">
				<div class="col-md-4">
				<inputbox id="numero" type="number" pattern="[0-9]" onkeypress="return event.charCode >= 48 && event.charCode <= 57" label="Numero" value="" placeholder="Numero del SolicitudPension" required=true disabled=true minsize=3 maxsize=100 />
				</div>
			
			<p hidden>1</p>
				
				<div class="col-md-4">
				
				<label class="control-label">Afiliado</label>
				
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="Afiliadomodal" caption="Afiliado" placeholder="Afiliado" />
				<modal-box id="Afiliadomodal"  data="afiliado-results" title="Seleccionar Afiliado " action="select-multi" pagination="true"/>
				</div>
					        </div>
			
			<p hidden>2</p>
				
				<div class="col-md-4">
				
				<label class="control-label">TipoPension</label>
				
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="TipoPensionmodal" caption="TipoPension" placeholder="TipoPension" />
				<modal-box id="TipoPensionmodal"  data="tipopension-results" title="Seleccionar TipoPension " action="select-multi" pagination="true"/>
				</div>
					        </div>
			</div>
			
			<p hidden>3</p>
			<div class="row">
				<div class="col-md-4">
				<date-picker id="fecha_solicitud" type= "date" label="Fecha Solicitud" placeholder="Fecha en la que se solició la Pensión" required=true disabled=true />
				</div>
			
			<p hidden>4</p>
				<div class="col-md-4">
				
				</div>
			
			<p hidden>5</p>
		</formbox>
	</page>
</solicitudpension-delete>
