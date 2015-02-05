React = require 'react'

# This is a little ugly. Up two directories, in data, leasing.json
content = require('../../data/leasing')
# Grap the body property of the file...
{body} = content

module.exports = React.createClass

  render: ->
    <section id="leasing">
      <div className="container">
        <p className="message" dangerouslySetInnerHTML={__html: body} />
        <p>insert big leasing info download button</p>
      </div>
    </section>
