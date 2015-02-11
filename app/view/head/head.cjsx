React = require 'react'

Nav = require './nav'

module.exports = React.createClass
  render: ->

    {title} = @props.data

    <header>
      <h1><a href="#">{title}</a></h1>
      <Nav data={@props.data} />
    </header>
