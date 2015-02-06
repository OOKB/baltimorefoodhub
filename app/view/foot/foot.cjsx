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
        <div className="group">
          <figure className="three columns">
            <img src="bfh-smalllogo-whitebg.png" alt="Baltimore Food Hub Logo, small version" />
          </figure>
          <div className="three columns">
            <p className="message">{msg}</p>
            <ul>
              <li>{address}</li>
              <li>{email}</li>
            </ul>
          </div>
          <div className="footer-credits three columns">
            <Credits builtDesigned={builtDesigned} />
          </div>
          <p className="three columns"><a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a></p>
        </div>
      </div>
    </footer>
