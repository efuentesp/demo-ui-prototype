var screensDir = 'testing/screenshoots/sucursalservices/crearsucursal-main/'
var screensCaptureDir = 'testing/captures/'
var stepCounter = 0
var stepCaptureCounter = 0

casper.test.begin('Crear un Modelo de Auto (Escenario Principal)', 4, function (test) {
  // trigger: Administrador chooses CrearModeloAutoPage
  casper.start('http://localhost:1337/#!/crearsucursalpage/', function () {
    this.viewport(1280, 850)
  })

  // Step 01. System shows CrearModeloAutoPage
  casper.then(function () {
    test.assertSelectorHasText('#page-title', 'Crear Sucursal')
  })

  // Step02. Administrador enters CrearModeloAutoPage.CrearForm
  casper.then(function () {
    this.fill('formbox form', {
      'nombre3': 'Sucursal Guadalajara'
    }, false)
  })

  // Step03. Administrador chooses CrearModeloAutoPage.CrearForm.Guardar
  casper.then(function () {
    // test.assertExists('#btn_guardar.btn', 'Botón [Guardar]')
    casper.click('#btn_guardar.btn')
  })

  // Step04. System validates CrearModeloAutoPage.CrearForm

  // Step05. System creates ModeloAutoServices.ModeloAuto

  // Post-condition
  casper.then(function () {
    test.assertSelectorHasText('#page-title', 'Buscar Sucursal')
  })

  // Fin del Caso de Uso
  casper.run(function () {
    test.done()
  })
})

var stepScreenshot = function () {
  var str = String(++stepCounter)
  while (str.length < 2) {
    str = '0' + str
  }
  var filename = screensDir + 'step-' + str + '.png'
  //casper.capture(filename)
  this.captureSelector(filename, 'div#contentid')
  this.echo('Saved screenshot of ' + (this.getCurrentUrl()) + ' to ' + name)
}

var stepCapture = function () {
  var str = String(++stepCaptureCounter)
  while (str.length < 5) {
    str = '0' + str
  }
  casper.capture(screensCaptureDir + 'step-complete-' + str + '.png', {
    top: 0,
    left: 0,
    width: 1280,
    height: 900
  })
}

casper.on('step.complete', stepScreenshot)
casper.on('step.start', stepCapture)
casper.on('step.complete', stepCapture)
