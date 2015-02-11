React = require 'react'

MainContact = require './mainContact'
LeasingContact = require './leasingContact'
Credits = require './credits'
Email = require '../emailField'
MailchimpForm = require './mailchimp'

module.exports = React.createClass

  render: ->
    {data} = @props
    {title, tagline, since, builtDesigned, street, zipcode, email, mainContact, leasingContact, mailchimpBlurb} = data

    yr = new Date().getFullYear()
    msg = "\u00a9 Copyright #{since}-#{yr}, #{title}"
    address = "#{street}, #{zipcode}"
    <footer id="contact">
      <div className="container">
        <div className="group">

          <div className="three columns">
            <div className="overlay">
              <figure className="logo text-center">
                <img src="bfh-logo-footer-slate.png" alt="Baltimore Food Hub Logo, small version" />
              </figure>
              <ul>
                <li>{title}</li>
                <li>{address}</li>
                <li><Email email={email} /></li>
              </ul>
            </div>
          </div>

          <div className="three columns">
            <div className="overlay">
              <MainContact mainContact={mainContact} />
            </div>
          </div>

          <div className="three columns">
            <div className="overlay">
              <LeasingContact leasingContact={leasingContact} />
            </div>
          </div>

          <div className="three columns">
            <div className="overlay">
              <strong>Newsletter</strong>
              <p>{mailchimpBlurb}</p>
              <MailchimpForm />
            </div>
          </div>

          <div className="three columns">
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
