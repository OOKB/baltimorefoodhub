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
          <div className="eight columns">
            <p className="message" dangerouslySetInnerHTML={__html: body} />
          </div>
        </div>
      </section>
    </article>
