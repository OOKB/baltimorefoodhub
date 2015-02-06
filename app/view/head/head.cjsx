React = require 'react'

Nav = require './nav'

module.exports = React.createClass
  render: ->

    {title} = @props.data

    <header>
      <h1>{title}</h1>
      <figure className="logo">
        <img src="bfhlogo.png" alt="Baltimore Food Hub Logo" />
      </figure>
      <Nav />
    </header>
