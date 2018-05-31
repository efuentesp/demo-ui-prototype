var screensDir = 'testing/captures/'
var stepCounter = 0

casper.test.begin('Crear un Modelo de Auto (Escenario Principal)', 3, function (test) {
  // trigger: Administrador chooses CrearModeloAutoPage
  casper.start('http://localhost:1337/#!/crearsucursalpage/', function () {
    this.viewport(1280, 850)
  })

  // System shows CrearModeloAutoPage
  casper.then(function () {
    const filename = 'testing/screenshoots/sucursalservices/crearsucursal-main/step1.png'
    test.assertSelectorHasText('#page-title', 'Crear Sucursal')
    // test.assertUrlMatch(this.getCurrentUrl(), 'http://localhost:1337/#!/crearsucursalpage/')
    // this.captureSelector(filename, 'html')
    this.capture(filename)
    this.echo('Saved screenshot of ' + (this.getCurrentUrl()) + ' to ' + filename)
    // test.assertExist('#page-title', 'No se encontró la página')
  })

  // Administrador enters CrearModeloAutoPage.CrearForm
  // casper.then(function () {
  //   this.fill('selector', {
  //     'nameOfFormElement': 'yourInput'
  //   }, true)
  // })

  // Administrador chooses CrearModeloAutoPage.CrearForm.Guardar
  casper.then(function () {
    test.assertExists('#guardar.btn', 'Botón [Guardar] encontrado.')
    this.click('#guardar.btn')

    casper.wait(1000, function () {
      const filename = 'testing/screenshoots/sucursalservices/crearsucursal-main/step6.png'
      test.assertSelectorHasText('#page-title', 'Buscar Sucursal')
      // test.assertUrlMatch(this.getCurrentUrl(), 'http://localhost:1337/index.html#!/BuscarSucursalPage/')
      // this.captureSelector(filename, 'html')
      this.capture(filename)
      this.echo('Saved screenshot of ' + (this.getCurrentUrl()) + ' to ' + filename)
    })
  })

  // System validates CrearModeloAutoPage.CrearForm

  // System creates ModeloAutoServices.ModeloAuto

  // Fin del Caso de Uso
  casper.run(function () {
    test.done()
  })
})

var stepCapture = function () {
  var str = String(++stepCounter)
  while (str.length < 5) {
    str = '0' + str
  }
  casper.capture(screensDir + 'step-complete-' + str + '.png', {
    top: 0,
    left: 0,
    width: 1200,
    height: 900
  })
}

casper.on('step.start', stepCapture)
casper.on('step.complete', stepCapture)
