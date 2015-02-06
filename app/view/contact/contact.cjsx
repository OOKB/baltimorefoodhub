React = require 'react'

content = require('../../data/contact')
{body} = content

module.exports = React.createClass

  render: ->
    <article id="contact" className="container">
      <section className="group">
        <h2 className="four columns">Contact</h2>
        <div className="eight columns">
          <p className="message" dangerouslySetInnerHTML={__html: body} />
          <p>insert in a contact form...</p>
        </div>
      </section>
    </article>
