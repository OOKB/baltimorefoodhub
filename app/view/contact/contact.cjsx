React = require 'react'
Wufoo = require './wufoo'
content = require('../../data/contact')
{body} = content

module.exports = React.createClass

  render: ->
    {wufoo} = @props.data

    <article id="contact">
      <section className="container">
        <div className="group">
          <h2 className="four columns">Contact</h2>
          <div className="eight columns">
            <p className="message" dangerouslySetInnerHTML={__html: body} />
            <Wufoo hash={wufoo?.hash} subdomain={wufoo?.subdomain} />
          </div>
        </div>
      </section>
    </article>
