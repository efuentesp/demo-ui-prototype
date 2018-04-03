<solicitudpension-edit>
	<page id="solicitudpension-edit" title="Editar SolicitudPensions">
		<formbox title="Datos del SolicitudPension" icon="fa fa-check-circle-o" action="update" return="solicitudPension-admin">
			<label>Afiliado<font color="red"> *</font></label>
			<!-- Modal -->
			<search-box id="searchboxsample" link="Afiliadomodal" caption="Afiliado" placeholder="Afiliado" />
			<modal-box id="Afiliadomodal"  data="afiliado-results" title="Seleccionar Afiliado " action="select-multi" pagination="true"/>
			<label>TipoPension<font color="red"> *</font></label>
			<!-- Modal -->
			<search-box id="searchboxsample" link="TipoPensionmodal" caption="TipoPension" placeholder="TipoPension" />
			<modal-box id="TipoPensionmodal"  data="tipopension-results" title="Seleccionar TipoPension " action="select-multi" pagination="true"/>
			<date-picker id="fecha_solicitud" type= "date" label="fecha_solicitud" placeholder="fecha_solicitud" />
			<inputbox id="observaciones" type="text" label="Observaciones" value="" placeholder="Observaciones del SolicitudPension" required=true disabled=false minsize=3 maxsize=100 />
		</formbox>
	</page>
</solicitudpension-edit>
