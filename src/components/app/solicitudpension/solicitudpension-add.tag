<solicitudpension-add>
	<page id="solicitudpension-add" title="Agregar SolicitudPensions">
		<formbox title="Datos del SolicitudPension" icon="fa fa-check-circle-o" action="create" return="solicitudPension-admin">
			numero
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
				    
				    
				    <!--
				    <row>
				      <column>
				        <select-box id="afiliado" type="select" placeholder="Afiliado" required=true>
				          <option-box id="estatus-01" label="Abierto"/>
				          <option-box id="estatus-02" label="Cerrado" />
				        </select-box>
				       <column>
				     <row>-->
				    
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
				    
				    
				    <!--
				    <row>
				      <column>
				        <select-box id="tipo" type="select" placeholder="Tipo" required=true>
				          <option-box id="estatus-01" label="Abierto"/>
				          <option-box id="estatus-02" label="Cerrado" />
				        </select-box>
				       <column>
				     <row>-->
				    
			<row>
			<column>
			<inputbox id="observaciones" type="text" label="Observaciones" value="" placeholder="Observaciones del SolicitudPension" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
		</formbox>
	</page>
</solicitudpension-add>
	
