React = require 'react'

Credits   = require './credits'

module.exports = React.createClass
  getInitialState: ->
    name: null

  componentDidMount: ->
    #@fbClick()

  render: ->
    {data} = @props
    {title, tagline, since, builtDesigned, street, zipcode} = data

    yr = new Date().getFullYear()
    msg = "\u00a9 Copyright #{since}-#{yr}, #{title}"
    address = "#{street}, #{zipcode}"
    <footer>
      <div className="container">
        <div className="footer-credits">
          <Credits builtDesigned={builtDesigned} />
        </div>
        <p className="message">{msg}</p>
        <ul>
          <li><p>{address}</p></li>
        </ul>
      </div>
    </footer>
