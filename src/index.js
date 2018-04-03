
'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'

// Hoja de estilos
import './styles/index.scss'

// Applicaci�n
import './components/app/app.tag'

// Componentes comunes
import './components/common/layout/page.tag'
import './components/common/layout/content.tag'
import './components/common/layout/tablist.tag'
import './components/common/layout/footer/footerbar.tag'
import './components/common/layout/header/topbar.tag'
import './components/common/layout/sidebar/menu-item.tag'
import './components/common/layout/sidebar/menu-section.tag'
import './components/common/layout/sidebar/side-menu.tag'
import './components/common/layout/sidebar/sidebar-menu.tag'
import './components/common/layout/sidebar/sidebar-profile.tag'
import './components/common/layout/sidebar/sidebar.tag'
import './components/common/form/formbox.tag'
import './components/common/form/date-picker.tag'
import './components/common/form/select-auto.tag'
import './components/common/form/inputbox.tag'
import './components/common/form/option-box.tag'
import './components/common/form/search.tag'
import './components/common/form/panel.tag'
import './components/common/form/select-box.tag'
import './components/common/form/attach-photo.tag'
import './components/common/form/outputtext.tag'
import './components/common/form/progress-bar.tag'
import './components/common/form/note.tag'
import './components/common/form/login.tag'
import './components/common/form/pagination-bar.tag'
import './components/common/form/actions.tag'
import './components/common/form/action-group.tag'
import './components/common/form/action-button.tag'
import './components/common/grid/row.tag'
import './components/common/grid/column.tag'

// Patrones Funcionales
import './components/patterns/crud/searchpanel.tag'
import './components/patterns/crud/edit-button.tag'
import './components/patterns/crud/delete-button.tag'
import './components/patterns/crud/submit-button.tag'
import './components/patterns/crud/table-results.tag'
import './components/patterns/crud/simple-admin.tag'
import './components/patterns/crud/select-list.tag'
import './components/patterns/crud/modal-box.tag'
import './components/patterns/wizard/form-wizard.tag'
import './components/patterns/wizard/step-wizard.tag'

// Componentes generados
import './components/app/afiliado/afiliado-admin.tag'
import './components/app/afiliado/afiliado-form.tag'
import './components/app/afiliado/afiliado-add.tag'
import './components/app/afiliado/afiliado-edit.tag'
import './components/app/afiliado/afiliado-delete.tag'
import './components/app/tipopension/tipopension-admin.tag'
import './components/app/tipopension/tipopension-form.tag'
import './components/app/tipopension/tipopension-add.tag'
import './components/app/tipopension/tipopension-edit.tag'
import './components/app/tipopension/tipopension-delete.tag'
import './components/app/solicitudpension/solicitudpension-admin.tag'
import './components/app/solicitudpension/solicitudpension-form.tag'
import './components/app/solicitudpension/solicitudpension-add.tag'
import './components/app/solicitudpension/solicitudpension-edit.tag'
import './components/app/solicitudpension/solicitudpension-delete.tag'
import './components/app/beneficiario/beneficiario-admin.tag'
import './components/app/beneficiario/beneficiario-form.tag'
import './components/app/beneficiario/beneficiario-add.tag'
import './components/app/beneficiario/beneficiario-edit.tag'
import './components/app/beneficiario/beneficiario-delete.tag'

const msgs = require('json-loader!./default-messages.json')
var msgJSON = JSON.stringify(msgs)
localStorage.setItem('messages', msgJSON)

const config = require('json-loader!./config.json')
var precision = '2' // 2 is the default value
for (var k = 0; k < config.keys.length; k++) {
  var ks = config.keys[k]
  if (ks.key === 'precision') {
    precision = ks.value
    break
  }
}

localStorage.setItem('precision', precision)

const json = require('./tabledata.js')
var filenames = []
for (var j = 0; j < json.files.length; j++) {
  filenames[j] = (json.files[j].path)
  for (var c = 0; c < filenames[j].ids.length; c++) {
    localStorage.setItem('rows_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].rows))
    localStorage.setItem('header_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].headers))
    if (filenames[j].ids[c].actions !== 'undefined') {
      localStorage.setItem('actions_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].actions))
    }
  }
}

require('riot-routehandler')
var routes = [
  { route: '/', tag: 'login' },
  { route: '/home/', tag: 'app' },
  { route: '/afiliado-admin/', tag: 'afiliado-admin' },
  { route: '/tipopension-admin/', tag: 'tipopension-admin' },
  { route: '/solicitudpension-admin/', tag: 'solicitudpension-admin' },
  { route: '/beneficiario-admin/', tag: 'beneficiario-admin' },
  { route: '/afiliado-add/', tag: 'afiliado-add' },
  { route: '/tipopension-add/', tag: 'tipopension-add' },
  { route: '/solicitudpension-add/', tag: 'solicitudpension-add' },
  { route: '/beneficiario-add/', tag: 'beneficiario-add' },
  { route: '/afiliado-edit/', tag: 'afiliado-edit' },
  { route: '/tipopension-edit/', tag: 'tipopension-edit' },
  { route: '/solicitudpension-edit/', tag: 'solicitudpension-edit' },
  { route: '/beneficiario-edit/', tag: 'beneficiario-edit' },
  { route: '/afiliado-delete/', tag: 'afiliado-delete' },
  { route: '/tipopension-delete/', tag: 'tipopension-delete' },
  { route: '/solicitudpension-delete/', tag: 'solicitudpension-delete' },
  { route: '/beneficiario-delete/', tag: 'beneficiario-delete' }
]
riot.mount('*', { routes: routes, options: { hashbang: true, params: { title: 'Login', username: 'Usuario', password: 'Contrase�a', link: '//' } } })
