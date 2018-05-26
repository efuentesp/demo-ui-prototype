var URLS = []

// Urls for: ModeloAutoServices
URLS = URLS.concat([
{page: 'http://localhost:1337/#!/buscarmodeloautopage/', title: 'BuscarModeloAutoPage', module: 'ModeloAutoServices'},
{page: 'http://localhost:1337/#!/crearmodeloautopage/', title: 'CrearModeloAutoPage', module: 'ModeloAutoServices'},
{page: 'http://localhost:1337/#!/editarmodeloautopage/', title: 'EditarModeloAutoPage', module: 'ModeloAutoServices'},
{page: 'http://localhost:1337/#!/eliminarmodeloautopage/', title: 'EliminarModeloAutoPage', module: 'ModeloAutoServices'},
])

// Urls for: SucursalServices
URLS = URLS.concat([
{page: 'http://localhost:1337/#!/buscarsucursalpage/', title: 'BuscarSucursalPage', module: 'SucursalServices'},
{page: 'http://localhost:1337/#!/crearsucursalpage/', title: 'CrearSucursalPage', module: 'SucursalServices'},
{page: 'http://localhost:1337/#!/editarsucursalpage/', title: 'EditarSucursalPage', module: 'SucursalServices'},
{page: 'http://localhost:1337/#!/eliminarsucursalpage/', title: 'EliminarSucursalPage', module: 'SucursalServices'},
])

var SCREENSHOT_WIDTH = 1280
var SCREENSHOT_HEIGHT = 900
var LOAD_WAIT_TIME = 2000

// var getPageTitle = function (page) {
//   var documentTitle = page.evaluate(function () {
//     return document.title
//   })
//   console.log('getting title:', documentTitle)
//   return documentTitle
// }

var getPageHeight = function (page) {
  var documentHeight = page.evaluate(function () {
    return document.body.offsetHeight
  })
  console.log('getting height:', documentHeight)
  return documentHeight
}

var renderPage = function (page, url) {
  // var title = getPageTitle(page)
  var pageHeight = getPageHeight(page)

  page.clipRect = {
    top: 0,
    left: 0,
    width: SCREENSHOT_WIDTH,
    height: pageHeight
  }
  page.render('functional-requirements/document/ui-prototype/' + url.module + '/' + url.title + '.png')
  console.log('rendered:', url.title + '.png')
}

var exitIfLast = function (index, array) {
  console.log(array.length - index - 1, 'more screenshots to go!')
  console.log('~~~~~~~~~~~~~~')
  if (index === array.length - 1) {
    console.log('exiting phantomjs')
    phantom.exit()
  }
}

var takeScreenshot = function (element) {
  console.log('opening URL:', element)

  var page = require('webpage').create()

  page.viewportSize = {width: SCREENSHOT_WIDTH, height: SCREENSHOT_HEIGHT}

  page.open(element)

  console.log('waiting for page to load...')

  page.onLoadFinished = function () {
    setTimeout(function () {
      console.log("that's long enough")
      renderPage(page, URLS[index])
      exitIfLast(index, URLS)
      index++
      takeScreenshot(URLS[index].page)
    }, LOAD_WAIT_TIME)
  }
}

var index = 0

takeScreenshot(URLS[index].page)
