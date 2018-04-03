<afiliado-add>
	<page id="afiliado-add" title="Agregar Afiliados">
		<formbox title="Datos del Afiliado" icon="fa fa-check-circle-o" action="create" return="afiliado-admin">
			<inputbox id="nss" type="text" label="Nss" value="" placeholder="Nss del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="apellido_paterno" type="text" label="Apellido_paterno" value="" placeholder="Apellido_paterno del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
			<inputbox id="apellido_materno" type="text" label="Apellido_materno" value="" placeholder="Apellido_materno del Afiliado" required=true disabled=false minsize=3 maxsize=100 />
			<select-box id="Genero" type="select" placeholder="Genero" required=true>
				<option-box id="MALE" label="Masculino" />
				<option-box id="FEMALE" label="Femenino" />
			</select-box>
		</formbox>
	</page>
</afiliado-add>	
