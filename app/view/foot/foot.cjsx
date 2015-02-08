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
          <figure className="two columns center-text">
            <img src="bfh-smalllogo-whitebg.png" alt="Baltimore Food Hub Logo, small version" />
          </figure>
          <div className="ten columns">
            <div className="group">
              <div className="four columns">
                <div className="overlay">
                  <p className="message">{msg}</p>
                  <p><a href="http://madewithloveinbaltimore.org">Made with &hearts; in Baltimore</a></p>
                </div>
              </div>
              <div className="footer-credits four columns">
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
                  <Credits builtDesigned={builtDesigned} />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
