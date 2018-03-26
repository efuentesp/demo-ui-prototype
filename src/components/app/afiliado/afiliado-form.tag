<afiliado-form>
	<row>
	<column>
	<inputbox id="nss" type="text" label="Nss" value="" placeholder="Nss del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
	</column>
	</row>
	<row>
	<column>
	<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
	</column>
	</row>
	<row>
	<column>
	<inputbox id="apellido_paterno" type="text" label="Apellido_paterno" value="" placeholder="Apellido_paterno del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
	</column>
	</row>
	<row>
	<column>
	<inputbox id="apellido_materno" type="text" label="Apellido_materno" value="" placeholder="Apellido_materno del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
	</column>
	</row>
	<row>
		<column>
			<label>Genero<font color="red"> *</font></label>
		</column>
	</row>
	
	<!-- Modal -->
	        <row>
	          <column>
	    <search-box id="searchboxsample" link="generomodal" caption="Genero" placeholder="Genero" />
	   	<modal-box id="generomodal"  data="genero-results" title="Seleccionar Genero " action="select-multi" pagination="true"/>
	       	  </column>
	     	</row>    
		    
		    
		    <!--
		    <row>
		      <column>
		        <select-box id="genero" type="select" placeholder="Genero" required=true>
		          <option-box id="estatus-01" label="Abierto"/>
		          <option-box id="estatus-02" label="Cerrado" />
		        </select-box>
		       <column>
		     <row>-->
		    
</afiliado-form>
	
