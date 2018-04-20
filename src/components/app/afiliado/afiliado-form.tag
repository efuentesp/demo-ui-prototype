
<afiliado-form>
	<div class="row">
		<div class="col-md-4">	
		
		<inputbox id="nss" type="text" label="NSS" value="" placeholder="Número de Seguridad Social" required=true disabled=false minsize=10
		 maxsize=10
		 />
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
	
	<p hidden>4</p>
		
	
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
	
	<p hidden>7</p>
	
	<p hidden>8</p>
	</div>
	
	<p hidden>9</p>
	<div class="row">
	
	<p hidden>10</p>
	
	<p hidden>11</p>
	</div>
	
	<p hidden>12</p>
	<div class="row">
	
	<p hidden>13</p>
</afiliado-form>
