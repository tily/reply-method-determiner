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
    'Reply with @'
    'Reply without @\n(not including username)'
    'Reply without @\n(including username)'
    'Direct Message'
  ]

  getInitialState: ()->
    method: ''
    clicked: false

  handleClick: ()->
    @setState method: _.sample(@methods), clicked: true

  render: ->
    <div className='container text-center' style={fontSize:'10.0vh'}>
      <h1>Reply Method Determiner</h1>
      <Button onClick={@handleClick} disabled={@state.clicked}>Determine</Button><br />
      <span dangerouslySetInnerHTML={ __html: @state.method.replace /\n/g, ()-> "<br />"} />
    </div>

$(document).ready ()->
  app = React.createFactory(App)
  React.render app(), document.getElementById('client')
