React = require 'react'

MainContact = require './mainContact'
Credits = require './credits'
Email = require '../emailField'

module.exports = React.createClass

  render: ->
    {data} = @props
    {title, tagline, since, builtDesigned, street, zipcode, email, mainContact} = data

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
              <li><Email email={email} /></li>
            </ul>
          </div>
          <div className="footer-credits three columns">
            <MainContact mainContact={mainContact} />
            <Credits builtDesigned={builtDesigned} />
          </div>
          <p className="three columns"><a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a></p>
        </div>
      </div>
    </footer>
