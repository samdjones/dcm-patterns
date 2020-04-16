var sm = require('service-metadata')
var hm = require('header-metadata')

sm.mpgw.skipBackside = true
hm.current.set('Content-type', 'application/json')

session.output.write(JSON.stringify({
  'blahtime' : new Date().getTime()
}))