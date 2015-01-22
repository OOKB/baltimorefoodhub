React = require 'react'

#Nav = require './nav'

module.exports = React.createClass
  render: ->

    {title} = @props.data

    <header>
      <h1>{title}</h1>
      <p className="right">Directory / About / Contact</p>
    </header>
