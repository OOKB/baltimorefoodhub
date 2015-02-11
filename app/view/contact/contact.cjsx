React = require 'react'
Wufoo = require './wufoo'
MailchimpForm = require './mailchimp'
content = require('../../data/contact')
{body, mailchimp} = content

module.exports = React.createClass

  render: ->
    {wufoo} = @props.data

    <article id="contact">
      <section className="container">
        <div className="group">
          <div className="four columns">
            <h2 >Contact</h2>
            <aside>
              <p>{mailchimp}</p>
              <MailchimpForm />
            </aside>
          </div>
          <div className="eight columns lead">
            <p className="message" dangerouslySetInnerHTML={__html: body} />
            <Wufoo hash={wufoo?.hash} subdomain={wufoo?.subdomain} />
          </div>
        </div>
      </section>
    </article>
