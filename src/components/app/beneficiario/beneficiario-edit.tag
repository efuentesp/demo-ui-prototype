<beneficiario-edit>
	<page id="beneficiario-edit" title="Editar Beneficiarios">
		<formbox title="Datos del Beneficiario" icon="fa fa-check-circle-o" action="update" return="beneficiario-admin">
			<inputbox id="curp" type="text" label="Curp" value="" placeholder="Curp del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="apellido_paterno" type="text" label="Apellido_paterno" value="" placeholder="Apellido_paterno del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="apellido_materno" type="text" label="Apellido_materno" value="" placeholder="Apellido_materno del Beneficiario" required=true disabled=false minsize=3 maxsize=100 />
			<date-picker id="fecha_nacimiento" type= "date" label="fecha_nacimiento" placeholder="fecha_nacimiento" />
			<select-box id="Parentesco" type="select" placeholder="Parentesco" required=true>
				<option-box id="CONYUGE" label="Conyuge" />
				<option-box id="HIJO" label="Hijo" />
				<option-box id="ASCENDIENTE" label="Padre/Madre" />
			</select-box>
		</formbox>
	</page>
</beneficiario-edit>
