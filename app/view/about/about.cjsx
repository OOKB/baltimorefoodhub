React = require 'react'

module.exports = React.createClass

  render: ->
    {tagline, about} = @props.data

    <article id="about" className="container">
      <h2>{tagline}</h2>
      <p>{about}</p>
    </article>
