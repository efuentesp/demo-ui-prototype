
<afiliado-delete>
	<page id="afiliado-delete" title="Eliminar Afiliados">
		<formbox title="Datos del Afiliado" icon="fa fa-check-circle-o" action="delete" return="afiliado-admin">
			<div class="row">
				<div class="col-md-4">	
				
				<inputbox id="nss" type="text" label="NSS" value="" placeholder="Número de Seguridad Social" required=true disabled=true minsize=10
				 maxsize=10
				 />
				</div>
			
			<p hidden>1</p>
				<div class="col-md-4">	
				
				<inputbox id="nombre" type="text" label="Nombre(s)" value="" placeholder="Nombre o nombres del Afiliado" required=true disabled=true />
				</div>
			
			<p hidden>2</p>
				<div class="col-md-4">	
				
				<inputbox id="apellido_paterno" type="text" label="Apellido Paterno" value="" placeholder="Apellido Paterno del Afiliado" required=true disabled=true />
				</div>
			</div>
			
			<p hidden>3</p>
			<div class="row">
				<div class="col-md-4">	
				
				<inputbox id="apellido_materno" type="text" label="Apellido Materno" value="" placeholder="Apellido Materno del Afiliado" required=true disabled=true />
				</div>
			
			<p hidden>4</p>
				
					      <div class="col-md-4">
				<select-box id="Genero" type="select" placeholder="Género" required=false>
				
				<option-box id="MALE" label="Masculino" />
				<option-box id="FEMALE" label="Femenino" />
						  </select-box>
						  
						  </div>
			
			<p hidden>5</p>
				
				<div class="col-md-4">
				
				<label class="control-label">Beneficiarios</label>
				
				<div class="form-group">
				<!-- Modal -->
				<search-box id="searchboxsample" link="Beneficiariomodal" caption="Beneficiario" placeholder="Beneficiarios registrados" />
				<modal-box id="Beneficiariomodal"  data="beneficiario-results" title="Seleccionar Beneficiario " action="select-multi" pagination="true"/>
				</div>
					        </div>
			</div>
			
			<p hidden>6</p>
			<div class="row">
				<div class="col-md-4">
				
				<inputbox id="observaciones" type="textarea" label="Observaciones" value="" placeholder="Observaciones sobre el Afiliado" required=true disabled=true />
				</div>
			
			<p hidden>7</p>
				<div class="col-md-4">
				<date-picker id="fecha_afiliacion" type= "date" label="fecha_afiliacion" placeholder="fecha_afiliacion" required=true disabled=true />
				</div>
			
			<p hidden>8</p>
				<div class="col-md-4">
				<attach-photo id="foto" label="Foto" height="200" width="400" maxsizemb="7" filetypes="jpg, png, bmp" required=true disabled=true />
				
				</div>
			</div>
			
			<p hidden>9</p>
			<div class="row">
				<div class="col-md-4">
				<attach-photo id="acta_nacimiento" label="Acta de Nacimiento" height="200" width="400" maxsizemb="7" filetypes="docx, pdf, txt" required=true disabled=true />
				</div>
			
			<p hidden>10</p>
				<div class="col-md-4">	
				<inputbox id="email" type="email" label="Email" value="" placeholder="Correo electrónico de contacto" required=true disabled=true minsize=3 maxsize=100 />
				</div>
			
			<p hidden>11</p>
				<div class="col-md-4">
				<inputbox id="semanas_cotizadas" type="number" pattern="[0-9]" onkeypress="return event.charCode >= 48 && event.charCode <= 57" label="Semanas Cotizadas" value="" placeholder="Semanas Cotizadas en el IMSS" required=true disabled=true minsize=3 maxsize=100 />
				</div>
			</div>
			
			<p hidden>12</p>
			<div class="row">
				<div class="col-md-4">	
				<inputbox id="decimal" type="float" step="any" label="Dato Decimal" value="0.00" precision=2 placeholder="Dato decimal de ejemplo" required=true disabled=true min=0.50 max=8.00 />
				</div>
			
			<p hidden>13</p>
		</formbox>
	</page>
</afiliado-delete>
