React = require 'react'

Credits   = require './credits'

module.exports = React.createClass
  getInitialState: ->
    name: null

  componentDidMount: ->
    #@fbClick()

  render: ->
    {data} = @props
    {title, tagline, since, builtDesigned, street, zipcode, email} = data

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
          <li>{address}</li>
          <li>{email}</li>
        </ul>
        <a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a>
      </div>
    </footer>
