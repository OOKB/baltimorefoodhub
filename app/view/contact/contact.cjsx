React = require 'react'

content = require('../../data/contact')
{body} = content

module.exports = React.createClass

  render: ->
    <section id="contact">
      <div className="container">
        <p className="message" dangerouslySetInnerHTML={__html: body} />
        <p>insert in a contact form...</p>
      </div>
    </section>
