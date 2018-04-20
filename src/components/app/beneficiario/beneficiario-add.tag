
<beneficiario-add>
	<page id="beneficiario-add" title="Agregar Beneficiarios">
		<formbox title="Datos del Beneficiario" icon="fa fa-check-circle-o" action="create" return="beneficiario-admin">
			<div class="row">
				<div class="col-md-4">	
				
				<inputbox id="curp" type="text" label="CURP" value="" placeholder="CURP" required=true disabled=false />
				</div>
			
			<p hidden>1</p>
				<div class="col-md-4">	
				
				<inputbox id="nombre" type="text" label="Nombre(s)" value="" placeholder="Nombre o nombres del Afiliado" required=true disabled=false />
				</div>
			
			<p hidden>2</p>
				<div class="col-md-4">	
				
				<inputbox id="apellido_paterno" type="text" label="Apellido Paterno" value="" placeholder="Apellido Paterno del Afiliado" required=true disabled=false />
				</div>
			</div>
			
			<p hidden>3</p>
			<div class="row">
				<div class="col-md-4">	
				
				<inputbox id="apellido_materno" type="text" label="Apellido Materno" value="" placeholder="Apellido Materno del Afiliado" required=true disabled=false />
				</div>
			
			<p hidden>4</p>
				<div class="col-md-4">
				<date-picker id="fecha_nacimiento" type= "date" label="fecha_nacimiento" placeholder="fecha_nacimiento" required=true disabled=false />
				</div>
			
			<p hidden>5</p>
				
					      <div class="col-md-4">
				<select-box id="Parentesco" type="select" placeholder="Parentesco" required=false>
				
				<option-box id="CONYUGE" label="Conyuge" />
				<option-box id="HIJO" label="Hijo" />
				<option-box id="ASCENDIENTE" label="Padre/Madre" />
						  </select-box>
						  
						  </div>
			</div>
			
			<p hidden>6</p>
		</formbox>
	</page>
</beneficiario-add>	
