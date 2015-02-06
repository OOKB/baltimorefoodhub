React = require 'react'

content = require('../../data/about')
{body} = content

module.exports = React.createClass

  render: ->
    {tagline, about} = @props.data

    <article id="about" className="container">
      <section className="group">
        <h2 className="four columns">About</h2>
        <div className="eight columns">
          <h3>{tagline}</h3>
          <p dangerouslySetInnerHTML={__html: body} />
        </div>
      </section>
    </article>
