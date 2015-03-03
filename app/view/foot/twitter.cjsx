React = require 'react'

module.exports = React.createClass
  insertJs: (d, s, id, url) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    if d.getElementById(id)
      return
    js = d.createElement(s)
    js.id = id
    js.src = url
    fjs.parentNode.insertBefore js, fjs
    return

  componentDidMount: ->
    @insertJs document, 'script', 'twitter-wjs', '//platform.twitter.com/widgets.js'

  render: ->
      <a href="https://twitter.com/share" className="twitter-share-button" data-text="Charmed, packed and shipped. The Baltimore Food Hub is promoting local and regional foods in Baltimore City. Doors open in 2016!" data-size="large" data-count="none" data-hashtags="baltimorefoodhub">Tweet</a>
