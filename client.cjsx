require('./client.css')
$ = require('jquery')
_ = require('underscore')
React = require('react/addons')
Navbar = require('react-bootstrap').Navbar
Nav = require('react-bootstrap').Nav
NavItem = require('react-bootstrap').NavItem
Button = require('react-bootstrap').Button
Input = require('react-bootstrap').Input
Glyphicon = require('react-bootstrap').Glyphicon

App = React.createClass
  methods: [
    '@ Replies'
    'Replies without @ (not including username)'
    'Replies without @ (including username)'
    'Direct Messages'
    'E-Mail (mailto: tidnlyam@gmail.com)'
  ]

  getInitialState: ()->
    method: ''

  handleClick: ()->
    @setState method: _.sample(@methods)

  render: ->
    <div className='container text-center' style={fontSize:'10.0vh'}>
      <h1>Reply Method Determiner</h1>
      <Button onClick={@handleClick}>Determine</Button><br />
      <span>{@state.method}</span>
    </div>

$(document).ready ()->
  app = React.createFactory(App)
  React.render app(), document.getElementById('client')