<beneficiario-add>
	<page id="beneficiario-add" title="Agregar Beneficiarios">
		<formbox title="Datos del Beneficiario" icon="fa fa-check-circle-o" action="create" return="beneficiario-admin">
			<row>
			<column>
			<inputbox id="curp" type="text" label="Curp" value="" placeholder="Curp del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
			<column>
			<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
			<column>
			<inputbox id="apellido_paterno" type="text" label="Apellido_paterno" value="" placeholder="Apellido_paterno del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
			<column>
			<inputbox id="apellido_materno" type="text" label="Apellido_materno" value="" placeholder="Apellido_materno del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			</column>
			</row>
			<date-picker id="fecha_nacimiento">
			</date-picker>
			
			
			
			<row>
			  <column>
			    <select-box id="parentesco" type="select" placeholder="Parentesco" required=true>
			      <option-box id="estatus-01" label="Abierto" />
			      <option-box id="estatus-02" label="Cerrado" />
			    </select-box>
			   </column>
			 </row>
		</formbox>
	</page>
</beneficiario-add>
	
