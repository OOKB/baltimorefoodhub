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
          <figure className="four columns">
            <img src="bfh-logo-footer-slate.png" alt="Baltimore Food Hub Logo, small version" />
          </figure>
          <div className="four columns">
            <div className="overlay">
              <MainContact mainContact={mainContact} />
              <ul>
                <li>{address}</li>
                <li><Email email={email} /></li>
              </ul>
            </div>
          </div>
          <div className="four columns">
            <div className="overlay">
              <p className="message">{msg}</p>
              <p><a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a></p>
            </div>
          </div>
        </div>
      </div>
      <div className="footer-credits ">
        <Credits builtDesigned={builtDesigned} />
      </div>
    </footer>
