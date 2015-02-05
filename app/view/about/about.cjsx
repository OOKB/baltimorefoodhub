React = require 'react'

content = require('../../data/about')
{body} = content

module.exports = React.createClass

  render: ->
    {tagline, about} = @props.data

    <article id="about" className="container">
      <h2>{tagline}</h2>
      <p dangerouslySetInnerHTML={__html: body} />
    </article>
