
<tipopension-delete>
	<page id="tipopension-delete" title="Eliminar TipoPensions">
		<formbox title="Datos del TipoPension" icon="fa fa-check-circle-o" action="delete" return="tipoPension-admin">
			<div class="row">
				<div class="col-md-4">	
				
				<inputbox id="clave" type="text" label="Clave" value="" placeholder="Clave del TipoPension" required=true disabled=true />
				</div>
			
			<p hidden>1</p>
				<div class="col-md-4">	
				<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del TipoPension" required=true disabled=true />
				</div>
			
			<p hidden>2</p>
		</formbox>
	</page>
</tipopension-delete>
