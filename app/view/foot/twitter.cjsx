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
      <a href="https://twitter.com/share" className="twitter-share-button" data-text="Charmed, packed & shipped. The Baltimore Food Hub promotes local & regional foods. Doors open in 2016!" data-size="large" data-count="none" >Tweet</a>
