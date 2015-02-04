React = require 'react'

module.exports = React.createClass

  render: ->
    {leasingblurb} = @props.data

    <section id="leasing">
      <div className="container">
        <p className="message">{leasingblurb}</p>
        <p>insert big leasing info download button</p>
      </div>
    </section>
