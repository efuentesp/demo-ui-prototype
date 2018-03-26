<tipopension-delete>
	<page id="tipopension-delete" title="Eliminar TipoPensions">
		<formbox title="Datos del TipoPension" icon="fa fa-check-circle-o" action="delete" return="tipoPension-admin">
			<row>
			<column>
			<inputbox id="clave" type="text" label="Clave" value="" placeholder="Clave del TipoPension" required=true disabled=true minsize=3 maxsize=100 />
			</column>
			</row>
			<row>
			<column>
			<inputbox id="nombre" type="text" label="Nombre" value="" placeholder="Nombre del TipoPension" required=true disabled=true minsize=3 maxsize=100 />
			</column>
			</row>
		</formbox>
	</page>
</tipopension-delete>
