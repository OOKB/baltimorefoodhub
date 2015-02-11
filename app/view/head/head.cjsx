React = require 'react'

Nav = require './nav'

module.exports = React.createClass
  render: ->

    {title} = @props.data

    <header>
      <h1>{title}</h1>
      <figure className="logo">
        <img src="bfh-logo-gradient.png" alt="Baltimore Food Hub Logo" />
      </figure>
      <Nav data={@props.data} />
    </header>
