React = require 'react'

content = require('../../data/about')
{body} = content

module.exports = React.createClass

  render: ->
    {tagline, about, blurb} = @props.data

    <article id="about">
      <section className="container">
        <div className="group">
          <h2 className="four columns">About</h2>
          <div className="eight columns">
            <div className="bordered">
              <p className="lead">{blurb}</p>
              <p dangerouslySetInnerHTML={__html: body} />
            </div>
          </div>
        </div>
      </section>
    </article>
