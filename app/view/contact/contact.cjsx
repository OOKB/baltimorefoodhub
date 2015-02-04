React = require 'react'

module.exports = React.createClass

  render: ->
    {data} = @props
    {contactblurb} = data

    <section id="contact">
      <div className="container">
        <p className="message">{contactblurb}</p>
        <p>insert in a contact form...</p>
      </div>
    </section>
