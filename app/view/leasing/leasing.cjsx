React = require 'react'

module.exports = React.createClass
  getInitialState: ->
    name: null

  componentDidMount: ->
    #@fbClick()

  render: ->
    {data} = @props
    {leasingblurb} = data

    <section id="leasing">
      <div className="container">
        <p className="message">{leasingblurb}</p>
        <p>insert big leasing info download button</p>
      </div>
    </section>
