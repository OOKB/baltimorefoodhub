React = require 'react'

# This is a little ugly. Up two directories, in data, leasing.json
content = require('../../data/leasing')
# Grap the body property of the file...
{body} = content

module.exports = React.createClass

  render: ->
    <article id="leasing">
      <section className="container">
        <div className="group">
          <h2 className="four columns">Leasing</h2>
          <div className="eight columns lead">
            <p className="message" dangerouslySetInnerHTML={__html: body} />
          </div>
          <div className="four columns offset-by-four">
            <p className="download">
              <a target="_blank" href="/assets/pdf/20150225-BFH-LeasingInformation.pdf">Leasing Brochure</a>
            </p>
          </div>
        </div>
      </section>
    </article>
