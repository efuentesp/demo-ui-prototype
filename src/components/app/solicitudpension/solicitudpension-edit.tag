<solicitudpension-edit>
	<page id="solicitudpension-edit" title="Editar SolicitudPensions">
		<formbox title="Datos del SolicitudPension" icon="fa fa-check-circle-o" action="update" return="solicitudPension-admin">
			
			<p hidden>true</p>
			
				     	<row>
			<column>
				<label>Afiliado<font color="red"> *</font></label>
			</column>
			 			</row>
			 			
			 			<!-- Modal -->
			 			<row>
			 				<column>
			 					<search-box id="searchboxsample" link="afiliadomodal" caption="Afiliado" placeholder="Afiliado" />
			 					<modal-box id="afiliadomodal"  data="afiliado-results" title="Seleccionar Afiliado " action="select-multi" pagination="true"/>
			 				</column>
			 			</row> 
			
			
			<p hidden>true</p>
			
				     	<row>
			<column>
				<label>Tipo<font color="red"> *</font></label>
			</column>
			 			</row>
			 			
			 			<!-- Modal -->
			 			<row>
			 				<column>
			 					<search-box id="searchboxsample" link="tipomodal" caption="Tipo" placeholder="Tipo" />
			 					<modal-box id="tipomodal"  data="tipopension-results" title="Seleccionar Tipo " action="select-multi" pagination="true"/>
			 				</column>
			 			</row> 
			
			<row>
			<column>
			<inputbox id="observaciones" type="text" label="Observaciones" value="" placeholder="Observaciones del SolicitudPension" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
		</formbox>
	</page>
</solicitudpension-edit>
	
